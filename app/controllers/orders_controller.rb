class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :checkout_order]

  def show
  end

  def my_active_order
    @order = current_user.restaurant.active_order
  end

  def checkout_order
    if @order.update(status: "paid")
      @order.order_products.each { |product| product.update(status: "paid") }
      current_user.restaurant.check_open_order
      redirect_to restaurant_orders_path(current_user.restaurant)
    else
      render 'my_active_order'
      flash[:error] = "Unfortunately, something went wrong. Try again!"
    end
  end

  def my_orders
    @paid_orders = current_user.restaurant.paid_orders
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end
end
