class Farmer < ApplicationRecord
  geocoded_by :address

  belongs_to :user
  has_many :products, dependent: :destroy
  has_many :order_products, through: :products
  has_many :farmer_photos, dependent: :destroy
  accepts_nested_attributes_for :farmer_photos

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true

  after_validation :geocode, if: :will_save_change_to_address?
end
