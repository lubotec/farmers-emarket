class AddTotalPriceToOrderProducts < ActiveRecord::Migration[5.2]
  def change
    add_monetize :order_products, :total_price, currency: { present: false }
  end
end
