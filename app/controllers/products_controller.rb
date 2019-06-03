class ProductsController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      params[:query].downcase!
      @products = Product.search_by_name_and_description(params[:query])
    elsif params[:category]
      @products = Product.where(category: params[:category])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @product_photo = @product.product_photos.build
  end

  def create
    @product = Product.new(product_params)
    @product.farmer = current_user.farmer
    respond_to do |format|
      if @product.save
        params[:product_photos]['data'].each do |a|
          @product_photo = @product.product_photos.create!(:data => a)
        end
        format.html { redirect_to farmer_path(current_user.farmer), notice: 'Product was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def edit
    # raise
  end

  def update
    if @product.update(product_params)
      flash[:success] = "Product was successfully updated"
      # redirect_to
    else
      render 'edit'
    end
    redirect_to farmer_path(current_user.farmer)
  end

  def destroy
    @product.destroy
    redirect_to farmer_path(current_user.farmer)
  end

  private

  def product_params
    params.require('product').permit(:farmer, :name, :category, :sku, :unit_of_measurement, :inventory, :price, product_photos_attributes: [:product_id, :data])
  end

  def find_id
    @product = Product.find(params[:id])
  end
end
