class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :order_products

  validates :name, presence: true
  validates :address, presence: true

  # def active_order
  #   open_order = orders.find_by(status: "open")
  #   if open_order
  #     open_order
  #   else
  #     Order.create(status: "open", restaurant: self)
  #   end
  #   # orders.find_by(status: "open") || Order.create(status: "open", restaurant: self)
  # end

  def active_order
    Order.create(status: "open", restaurant: self) if orders.find_by(status: "open").nil?
  end
end
