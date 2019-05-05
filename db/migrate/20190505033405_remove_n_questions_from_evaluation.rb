class RemoveNQuestionsFromEvaluation < ActiveRecord::Migration[5.2]
  def change
    remove_column :evaluations, :n_questions, :integer
  end
end
