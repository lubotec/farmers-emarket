class Farmer < ApplicationRecord
  belongs_to :user
  has_many :products
  has_many :order_products, through: :products
  has_many :farmer_photos
  accepts_nested_attributes_for :farmer_photos
  
  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
end
