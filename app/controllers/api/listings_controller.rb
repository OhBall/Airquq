class Api::ListingsController < ApplicationController
  def index
    if params[:city].is_a?(Array)
      @listings_hash = {}
      params[:city].each do |city|
        @listings_hash[city] = Listing.where(city: city)
      end 

      render :homepage_listings
    else
      @listings = bounds ? Listing.in_bounds(bounds) : Listing.all 
      render :index
    end
  end
    
  def show
    @listing = Listing.includes(:host, :reviews, reviews: :author).find(params[:id])
    render :show
  end

  def create
    listing = Listing.new(listing_params)

    if listing.save
      render json: { message: "success" }
    else
      render json: post.errors.full_messages
    end 
  end 

  private
  
  def listing_params
    params.require(:listing)
      .permit(:name, :host_id, :description, :price, :room_num, 
              :bed_num, :bath_num, :air_conditioning, :heating, 
              :essentials, :wifi, :tv, :washer, :kitchen, 
              :free_parking, :hair_dryer, :shampoo, :address, 
              :city, :state, :country, :zipcode, :lat, :lng, photos:[])
  end 

  def bounds 
    params[:bounds]
  end 
end