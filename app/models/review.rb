class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :order_product

  validates :description, presence: true
  validates :rating, presence: true
end
