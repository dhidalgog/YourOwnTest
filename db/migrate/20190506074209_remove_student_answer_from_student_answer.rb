class RemoveStudentAnswerFromStudentAnswer < ActiveRecord::Migration[5.2]
  def change
    remove_column :student_answers, :student_answer, :boolean
  end
end
