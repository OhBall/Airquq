class Api::BookingsController < ApplicationController

  before_action :require_log_in

  def index
    @bookings = Booking.includes(:listing, listing: :host).where(guest_id: current_user.id)
    render :index
  end

  def show
    @booking = current_user.bookings.find_by_id(params[:id])
    render :show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.guest_id = current_user.id

    if @booking.save
      render :show
    else 
      render json: @booing.errors.full_messages, status: 422
    end 
  end

  def update
    @booking = current_user.bookings.find_by_id(params[:id])

    if @booking && @booking.update(booking_params)
      render :show
    else 
      render json: @booing.errors.full_messages, status: 422
    end 
  end

  def destroy
    @booking = current_user.bookings.find_by_id(params[:id])
    @booking.destroy
    render :show
  end

  private

  def booking_params
    params.require(:booking).permit(:listing_id, :guest_id, :checkin_date, :checkout_date, :guest_num)
  end 
end
