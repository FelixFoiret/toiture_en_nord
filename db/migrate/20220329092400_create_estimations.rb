class CreateEstimations < ActiveRecord::Migration[6.1]
  def change
    create_table :estimations do |t|
      t.string :thematic
      t.string :description
      t.boolean :done
      t.integer :workforce
      t.integer :term
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
