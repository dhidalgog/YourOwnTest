class AddStudentAnswerToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :student_answer, :boolean, default: false
  end
end
