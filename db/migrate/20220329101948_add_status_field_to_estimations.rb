class AddStatusFieldToEstimations < ActiveRecord::Migration[6.1]
  def change
    add_column :estimations, :status, :string
  end
end
