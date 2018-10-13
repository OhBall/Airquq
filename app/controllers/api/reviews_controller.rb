class Api::ReviewsController < ApplicationController

  before_action :require_log_in, only: [:create]

  def index
    listing = Listing.find_by_id(params[:listing_id])
    @reviews = listing.reviews
    render :index
  end

  def create
    @review = Review.new(review_params)
    @review.author_id = current_user.id
    listing = Listing.find_by_id(params[:listing_id])
    @review.listing_id = listing.id

    if @review.save
      render :show 
    else 
      render json: @review.errors.full_messages, status: 422
    end 
  end

  private

  def review_params
    param.require(:review).permit(:title, :body, :accuracy, :location, 
                                  :communication, :check_in, :cleanliness, 
                                  :value)
  end 
end