class AddStatusPaymentFieldToEstimations < ActiveRecord::Migration[6.1]
  def change
    add_column :estimations, :status_payment, :string
  end
end
