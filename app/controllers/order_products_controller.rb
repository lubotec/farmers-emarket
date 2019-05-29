class OrderProductsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @product = Product.find(params[:product_id])
    @order_product = OrderProduct.new(
      product: @product,
      order: current_user.restaurant.active_order,
      quantity: 1,
      status: "open",
      total_price: @product.price,
      product_sku: @product.sku
    )
    @order_product.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
end
