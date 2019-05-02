class CreateBelongsTos < ActiveRecord::Migration[5.2]
  def change
    create_table :belongs_tos do |t|
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
