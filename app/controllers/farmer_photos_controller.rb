class FarmerPhotosController < ApplicationController
    before_action :set_product, only: [:index, :create]

    def create
        @farmer_photo = FarmerPhoto.new(farmer_photo_params)
        @farmer_photo.farmer = @farmer
        @farmer_photo.save
        # redirect_to
    end

    def destroy
    end

    private

    def farmer_photo_params
        params.require('farmer_photo').permit(:data)
    end

    def set_product
        @farmer = Farmer.find(params[:id])
    end
end
