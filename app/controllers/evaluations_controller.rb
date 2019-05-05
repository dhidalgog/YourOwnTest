class EvaluationsController < ApplicationController
  load_and_authorize_resource
  # GET /evaluations
  # GET /evaluations.json
  def index
    @evaluations = Evaluation.all
    @evaluation = Evaluation.new
  end

  # GET /evaluations/1
  # GET /evaluations/1.json
  def show
    # Question List

    @questions_list = @evaluation.questions
    # Question Form
    @question = Question.new
    @question.questions_to_evaluate.build
    @question.answers.new
    @question.answers.new
    @question.answers.new
    @question.answers.new
    # Question Category
    @category = Category.new
  end

  # GET /evaluations/new
  def new
  end

  # GET /evaluations/1/edit
  def edit
  end

  # POST /evaluations
  # POST /evaluations.json
  def create
    @evaluation.user_id = current_user.id
    @evaluations = Evaluation.all
    respond_to do |format|
      if @evaluation.save
        format.js
        # format.html { redirect_to @evaluation, notice: 'Evaluation was successfully created.' }
        # format.json { render :show, status: :created, location: @evaluation }
      else
        format.html { render :new }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluations/1
  # PATCH/PUT /evaluations/1.json
  def update
    respond_to do |format|
      if @evaluation.update(evaluation_params)
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation }
      else
        format.html { render :edit }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation.destroy
    respond_to do |format|
      format.html { redirect_to evaluations_url, notice: 'Evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_params
      params.require(:evaluation).permit(:name, :description, :n_questions, :user_id)
    end
end
