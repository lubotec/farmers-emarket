class CreateFarmerPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :farmer_photos do |t|
      t.references :farmer, foreign_key: true
      t.string :data

      t.timestamps
    end
  end
end
