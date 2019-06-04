class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  has_many :reviews
  has_many :product_photos, through: :products
  monetize :total_price_cents
  
  def self.create_or_increment(params)
    order_product = OrderProduct.find_by(order: params[:order], product: params[:product])
    if order_product
      order_product.update(quantity: order_product.quantity + 1)
    else
      order_product = self.create(params)
    end
  end
end
