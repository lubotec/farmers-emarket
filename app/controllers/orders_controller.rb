class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def my_orders
    @orders = current_user.restaurant.orders
  end
end
