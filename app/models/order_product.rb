class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  has_many :reviews
  has_many :product_photos, through: :products
end
