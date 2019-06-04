class OrderProductsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @order_product = OrderProduct.create_or_increment(
      product: @product,
      order: current_user.restaurant.active_order,
      quantity: 1,
      status: "open",
      product_sku: @product.sku
    )
  end

  def destroy
    @order_product = OrderProduct.find(params[:id])
    @order_product.destroy
    redirect_to restaurant_cart_path(current_user.restaurant)
  end

  def increment
   @order_product = OrderProduct.find(params[:id])
   @order_product.quantity += 1
   @order_product.save
  end

  def decrement
    @order_product = OrderProduct.find(params[:id])
    @order_product.quantity -= 1 if @order_product.quantity > 0
    @order_product.save
  end
end
