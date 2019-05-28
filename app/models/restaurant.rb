class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :order_products

  validates :name, presence: true
  validates :address, presence: true
end
