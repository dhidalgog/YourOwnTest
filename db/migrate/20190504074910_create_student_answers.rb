class CreateStudentAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :student_answers do |t|
      t.references :questions_to_evaluate, foreign_key: true
      t.references :answer, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :student_answer, default: false

      t.timestamps
    end
  end
end
