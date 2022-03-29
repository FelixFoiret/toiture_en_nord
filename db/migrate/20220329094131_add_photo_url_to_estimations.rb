class AddPhotoUrlToEstimations < ActiveRecord::Migration[6.1]
  def change
    add_column :estimations, :photo_url, :string
  end
end
