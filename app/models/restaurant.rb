class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :order_products

  validates :name, presence: true
  validates :address, presence: true

  def active_order
    orders.find_by(status: "open")
  end

  def paid_orders
    orders.find_by(status: "paid")
  end

  def check_open_order
    Order.create(status: "open", restaurant: self) if orders.find_by(status: "open").nil?
    # Order.create(status: "open", restaurant: self) || orders.find_by(status: "open")
  end
end
