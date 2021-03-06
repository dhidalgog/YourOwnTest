class QuestionsController < ApplicationController
  load_and_authorize_resource
  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
    @categories = Category.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @evaluation = Evaluation.find(params[:question][:questions_to_evaluate_attributes]["0"][:evaluation_id])
    @questions_list = @evaluation.questions
    respond_to do |format|
      if @question.save
        format.js
        # format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(
        :content,
        :category_id,
        questions_to_evaluate_attributes: [:id, :evaluation_id, :question_id],
        answers_attributes: [:id, :content, :value, :question_id]
        )
    end
end
