class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :restaurant, foreign_key: true
      t.text :description
      t.integer :rating
      t.references :order_product, foreign_key: true

      t.timestamps
    end
  end
end
