class QuestionsToEvaluateController < ApplicationController
skip_authorization_check
  def destroy
    @qe = QuestionsToEvaluate.find(params[:id])
    @evaluation = Evaluation.find(@qe.evaluation_id)
    @qe.destroy

    redirect_to evaluation_path(@evaluation)
  end
end
