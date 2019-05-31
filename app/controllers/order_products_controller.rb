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
end
