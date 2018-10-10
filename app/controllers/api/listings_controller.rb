class Api::ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render :index
  end

  def show
    @listing = Listing.find(params[:id])
    render :show
  end

  private
  
  def listing_params
    params.require(:listing)
      .permit(:name, :host_id, :description, :price, :room_num, 
              :bed_num, :bath_num, :air_conditioning, :heating, 
              :essentials, :wifi, :tv, :washer, :kitchen, 
              :free_parking, :hair_dryer, :shampoo, :address, 
              :city, :state, :country, :zipcode, :lat, :lng)
  end 
end