class FarmersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :new, :create]
  before_action :set_farmer, only: [:show, :edit, :update]

  def new
    @farmer = Farmer.new
    @farmer_photo = @farmer.farmer_photos.build
    # authorize(@farmer)
  end

  def create
    @farmer = Farmer.new(set_params)
    # authorize(@farmer)
    @farmer.user = current_user
    respond_to do |format|
      if @farmer.save
        params[:farmer_photos]['data'].each do |a|
          @farmer_photo = @farmer.farmer_photos.create!(data: a)
        end
        format.html { redirect_to farmer_path(@farmer), notice: 'Farmer was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def show
    if params[:query].present?
      @products = SearchProducts.new(params[:query], @farmer.id).call
    else
      @products = @farmer.products
    end

    @marker = [{ lat: @farmer.latitude, lng: @farmer.longitude }]
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
    params.require('farmer').permit(:name, :address, :description, farmer_photos_attributes: [:farmer_id, :data])
  end

  def set_farmer
    @farmer = Farmer.find(params[:id])
  end
end
