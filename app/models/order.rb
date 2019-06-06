class Order < ApplicationRecord
  # skip_before_action :authenticate_user!
  belongs_to :restaurant
  has_many :order_products
  has_many :products, through: :order_products
  monetize :total_price_cents

  def total
    sum = 0
    order_products.map do |order_product|
      sum += order_product.product.price * order_product.quantity
    end
    sum
  end

end
