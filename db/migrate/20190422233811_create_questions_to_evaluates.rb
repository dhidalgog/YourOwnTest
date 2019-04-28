class CreateQuestionsToEvaluates < ActiveRecord::Migration[5.2]
  def change
    create_table :questions_to_evaluates do |t|
      t.references :evaluation, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
