class ProductsController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def my_products
    @products = current_user.farmer.products
  end

  def show
    @product_photos = ProductPhoto.where(product: @product)
    @product = Product.find(params[:id])
    @product_photos = @product.product_photos.all
  end

  def new
    @product = Product.new
    @product_photo = @product.product_photos.build
  end

  def create
    @product = Product.new(product_params)
<<<<<<< HEAD
    respond_to do |format|
      if @product.save
        params[:product_photos]['data'].each do |a|
           @product_photo = @product.product_photos.create!(:data => a, :product_id => @product.id)
        end
        format.html { redirect_to @product, notice: 'Post was successfully created.' }
      else
        format.html { render action: 'new' }
      end
=======
    @product.farmer = current_user.farmer
    if @product.save
      flash[:success] = "Product was successfully updated"
      redirect_to products_path
    else
      render 'new'
>>>>>>> acc7f78d0da4c68dd34ea833d307aa95a3a2cb44
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
