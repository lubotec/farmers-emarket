class Product < ApplicationRecord
  belongs_to :farmer
  has_many :order_products
  has_many :reviews, through: :order_products
  has_many :product_photos

  # validates :name, presence: true
  # validates :category, presence: true
  # validates :sku, presence: true
  # validates :unit_of_measurement, presence: true
  # validates :inventory, presence: true
  # validates :price, presence: true
end
