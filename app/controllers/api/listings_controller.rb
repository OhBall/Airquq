class Api::ListingsController < ApplicationController
  def index
    @listings = Listings.all
  end

  def show
    @listing = Listing.find_by_id(params[:id])
  end

  private
  
  def listing_params
  end 
end
