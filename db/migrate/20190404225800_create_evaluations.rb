class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.string :name
      t.string :description
      t.integer :n_questions
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
