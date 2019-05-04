class RemoveActiveFromEvaluation < ActiveRecord::Migration[5.2]
  def change
    remove_column :evaluations, :active, :boolean
  end
end
