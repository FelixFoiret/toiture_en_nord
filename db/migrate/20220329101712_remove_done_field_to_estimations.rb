class RemoveDoneFieldToEstimations < ActiveRecord::Migration[6.1]
  def change
    remove_column :estimations, :done
  end
end
