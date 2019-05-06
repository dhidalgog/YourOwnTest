class StudentAnswersController < ApplicationController
  skip_authorization_check
  def new
    set_evaluation
    @questions_list = @evaluation.questions
    
    @answers = []
    count = 0
    @questions_list.each do |question|
      question_hash = { question.content => [] }
      @answers << question_hash
      question.answers.each do |answer|
        @answers[count][question.content] << StudentAnswer.new(answer_id: answer.id)
      end
      count += 1
    end
  end

  def create
    set_evaluation
    params["answers"].each do |answer|
      StudentAnswer.create(answer_params(answer))
    end
    redirect_to evaluation_student_answers_result_path(@evaluation)
  end

  def result
    set_evaluation
    @score = 0
    @total = @evaluation.questions.size
    @questions_to_evaluate = QuestionsToEvaluate.where(evaluation_id: @evaluation.id)

    @questions_to_evaluate.each do |qe|
      @answers = StudentAnswer.where(questions_to_evaluate_id: qe.id)
      @answers.each do |answer|
        real_answer = Answer.find(answer.answer_id).value
        if real_answer && answer.student_answer == real_answer
          @score += 1
        end
      end
    end
    
  end


  private
  def set_evaluation
    @evaluation = Evaluation.find(params[:evaluation_id])
  end

  def answer_params(my_params)
    my_params.permit(:student_answer, :questions_to_evaluate_id, :answer_id, :user_id)
  end
end
