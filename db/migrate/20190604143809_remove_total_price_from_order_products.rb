class RemoveTotalPriceFromOrderProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_products, :total_price, :integer
  end
end
