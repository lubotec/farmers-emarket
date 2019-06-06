class Product < ApplicationRecord
  belongs_to :farmer
  has_many :order_products
  has_many :reviews, through: :order_products
  has_many :product_photos, dependent: :destroy
  accepts_nested_attributes_for :product_photos
  monetize :price_cents

  # def self.near(restaurant)
  #   nearby_farmers = Farmer.near(restaurant)
  #   farmer_ids = nearby_farmers.map {|farmer| farmer.id }
  #   Product.where(farmer_id: farmer_ids)
  # end

  scope :near, ->(*args) {
    nearby_addresses = Farmer.near(*args)
    where(farmer_id: nearby_addresses.map(&:id))
  }
  # mount_uploader :data, PhotoUploader
  # validates :name, presence: true
  # validates :category, presence: true
  # validates :sku, presence: true
  # validates :unit_of_measurement, presence: true
  # validates :inventory, presence: true
  # validates :price, presence: true
  include PgSearch
  pg_search_scope :search_by_name_and_description,
    against: [:name, :description, :category],
    associated_against: {
      farmer: [:name]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
