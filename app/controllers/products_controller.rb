class ProductsController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def my_products
    @products = current_user.farmer.products
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.farmer = current_user.farmer
    if @product.save
      redirect_to farmer_path(current_user.farmer)
      flash[:success] = "Product was successfully added"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      flash[:success] = "Product was successfully updated"
      # redirect_to
    else
      render 'edit'
    end
    redirect_to farmer_products_path
  end

  def destroy
    @product.destroy
    redirect_to farmer_products_path(current_user)
  end

  private

  def product_params
    params.require('product').permit(:farmer, :name, :category, :sku, :unit_of_measurement, :inventory, :price)
  end

  def find_id
    @product = Product.find(params[:id])
  end

end
