class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity
      t.string :status
      t.integer :total_price
      t.string :product_sku

      t.timestamps
    end
  end
end
