class Order < ApplicationRecord
  # skip_before_action :authenticate_user!
  belongs_to :restaurant
  has_many :order_products
  has_many :products, through: :order_products
  monetize :total_price_cents

end
