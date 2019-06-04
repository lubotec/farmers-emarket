class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :checkout_order]

  def show
  end

  def my_active_order
    @order = current_user.restaurant.active_order
  end

  def checkout_order
    if @order.update(status: "paid")
      @order.order_products.each { |order_product| order_product.update(status: "paid") }
      @order.order_products.each { |order_product| order_product.update(total_price: order_product.product.price * order_product.quantity) }
      order_total_price
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

  def order_total_price
    @order.total_price = 0
    @order.order_products.each do |order_product|
      @order.total_price += order_product.total_price
    end
    @order.update(total_price: @order.total_price)
  end
end
