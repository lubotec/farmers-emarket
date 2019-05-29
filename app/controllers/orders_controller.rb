class OrdersController < ApplicationController
  def create
    @restaurant = current_user.restaurant
    @order = Order.new(status: "open", restaurant: @restaurant)
  end

  def show

  end

  def my_orders
    @orders = current_user.restaurant.orders
  end
end
