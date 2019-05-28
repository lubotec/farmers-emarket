class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :farmer, foreign_key: true
      t.string :name
      t.string :category
      t.string :sku
      t.string :unit_of_measurement
      t.integer :inventory
      t.integer :price
      t.float :rating

      t.timestamps
    end
  end
end
