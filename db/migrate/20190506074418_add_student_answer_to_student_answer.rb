class AddStudentAnswerToStudentAnswer < ActiveRecord::Migration[5.2]
  def change
    add_column :student_answers, :student_answer, :boolean
  end
end
