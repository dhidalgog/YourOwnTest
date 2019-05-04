class RemoveStudentAnswerFromAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :student_answer, :boolean
  end
end
