class ProductsController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update]

  def index
    @products = policy_scope(Product).order(created_at: :desc)
  end

  def my_products
    @products = current_user.products
    authorize(@products)
  end

  def show
    @product = Product.find(params[:id])
    authorize(@product)
  end

  def new
    @product = Product.new
    authorize(@product)
  end

  def create
    @product = Product.new(product_params)
    @product.farmer = current_user.farmer
    authorize(@product)
    @product.save
    redirect_to products_path
  end

  def edit
    @product = Product.find(params[:id])
    authorize(@product)
  end

  def update   
    authorize(@product) 
    if @product.update(product_params)
      flash[:success] = "Product was successfully updated"
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    authorize(@product)
    @product.delete
    redirect_to products_path
  end

  private

  def product_params
    params.require('product').permit(:name, :category, :sku, :unit_of_measurement, :inventory, :price)
  end

  def find_id
    @product = Product.find(params[:id])
  end

end
