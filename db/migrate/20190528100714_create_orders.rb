class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :restaurant, foreign_key: true
      t.integer :total_price
      t.string :status

      t.timestamps
    end
  end
end
