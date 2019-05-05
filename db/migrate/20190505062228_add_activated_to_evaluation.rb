class AddActivatedToEvaluation < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluations, :activated, :boolean, default: false
  end
end
