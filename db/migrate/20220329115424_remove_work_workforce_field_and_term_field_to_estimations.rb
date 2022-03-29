class RemoveWorkWorkforceFieldAndTermFieldToEstimations < ActiveRecord::Migration[6.1]
  def change
    remove_column :estimations, :workforce
    remove_column :estimations, :term
  end
end
