class FarmersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :new, :create]
  before_action :set_farmer, only: [:show, :edit, :update]

  def new
    @farmer = Farmer.new
    # authorize(@farmer)
  end

  def create
    @farmer = Farmer.new(set_params)
    # authorize(@farmer)
    @farmer.user = current_user
    if @farmer.save
      redirect_to redirect_to farmer_path(@farmer)
    else
      render 'new'
    end
  end

  def show
    # authorize(@farmer)
  end

  def edit
    # authorize(@farmer)
  end

  def update
    @farmer.update(set_params)
    # authorize(@farmers)
    redirect_to farmer_path(@farmer)
  end

  private

  def set_params
    params.require('farmer').permit(:name, :address, :description)
  end

  def set_farmer
    @farmer = Farmer.find(params[:id])
  end
end
