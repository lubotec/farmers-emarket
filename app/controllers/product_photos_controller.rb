class ProductPhotosController < ApplicationController
  before_action :set_product, only: [:index, :create]

  def create
    @product_photo = ProductPhoto.new(product_photo_params)
    @product_photo.product = @product
    @product_photo.save
  end

  def destroy
  end

  private

  def product_photo_params
    params.require('product_photo').permit(:data)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
