class ProductsController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update]

  def index
    @products = Product.all
  end

  def my_products
    @products = current_user.products
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.farmer = current_user
    @product.save
    # redirect_to 
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update    
    if @product.update(product_params)
      flash[:success] = "Product was successfully updated"
      # redirect_to
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.delete
    # redirect_to
  end

  private

  def product_params
    params.require('product').permit(:name, :category, :sku, :unit_of_measurement, :inventory, :price)
  end

  def find_id
    @product = Product.find(params[:id])
  end

end
