class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :checkout_order]

  def show

  end

  def my_active_order
    @total = 0
    @order = current_user.restaurant.active_order
    @total_and_shipment = @order.total

  end

  def checkout_order
    @order.order_products.each do |order_product|
      order_product.update(total_price: order_product.product.price * order_product.quantity)
      check_inventory(order_product.product.inventory, order_product)
    end
    order_total_price
    redirect_to new_order_payment_path(@order)
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

  def check_inventory(inventory, order_product)
    if (inventory - order_product.quantity) < 0
      flash[:danger] = "There is only #{inventory} left of #{order_product.product.name}"
      return
    else
      order_product.product.update(inventory: order_product.product.inventory - order_product.quantity)
    end
  end

end
