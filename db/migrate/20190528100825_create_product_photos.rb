class CreateProductPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :product_photos do |t|
      t.references :product, foreign_key: true
      t.string :data

      t.timestamps
    end
  end
end
