class AddActiveToEvaluation < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluations, :active, :boolean, default: false
  end
end
