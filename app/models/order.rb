class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_products
  has_many :products, through: :order_products
end
