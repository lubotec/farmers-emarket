class RestaurantsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:new, :create]
  # before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # def index
  #     @restaurants = Restaurant.all
  # end

  def new
    @restaurant = Restaurant.new
    # authorize(@restaurant)
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    # authorize(@restaurant)
    @restaurant.user = current_user
    if @product.save
      redirect_to root_path
    else
      render 'new'
    end
    @order = Order.create(status: "open", restaurant: @restaurant) if @restaurant.orders.where(status: "open").empty?
  end

  # def edit
  # authorize(@car)
  # end

  # def update
  # @restaurant.update(car_params)
  # authorize(restaurant)
  # redirect_to user_restaurants_path
  # end

  # def destroy
  # @restaurant.destroy
  # authorize(@restaurant)
  # redirect_to user_restaurants_path(current_user)
  # end

  private

  def set_restaurant
      @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
      params.require('restaurant').permit(:name, :address, :avatar, :lat, :long)
  end
end
