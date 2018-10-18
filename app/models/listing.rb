class Listing < ApplicationRecord
  validates :name, :description, :address, :city, 
            :state, :country, :zipcode, :price, :room_num, 
            :bed_num, :bath_num, :lat, :lng,
            presence: true
  validates :air_conditioning, :heating, :essentials, :wifi, :tv, 
            :washer, :kitchen, :free_parking, :hair_dryer, :shampoo,
            inclusion: { in: [true, false, nil] }

  has_many :reviews

  belongs_to :host,
  foreign_key: :host_id,
  class_name: :User

  has_many :bookings

  has_many_attached :photos

  def booked_dates
    result = []
    
    self.bookings.each do |booking|
      start = booking.checkin_date
      stop = booking.checkout_date

      while start < stop
        result << start
        start += 1
      end 
    end 

    result
  end 

  def self.in_bounds(bounds)
    self.where("lat < ?", bounds[:northEast][:lat])
        .where("lat > ?", bounds[:southWest][:lat])
        .where("lng > ?", bounds[:southWest][:lng])
        .where("lng < ?", bounds[:northEast][:lng])
  end 

  def calculate_average_ratings
    average_rating = 0
    total_count = 0

    self.reviews.each do |review|
      count, rating = 0, 0
      rating_array = [review.accuracy, review.location, review.communication, review.check_in, review.cleanliness, review.value]
      rating_array.each do |category_rating|
        if category_rating
          count += 1
          rating += category_rating
        end
      end

      rating = rating.to_f / count if count != 0

      if rating != 0
        average_rating += rating 
        total_count += 1
      end 
    end 

    average_rating = average_rating / total_count if total_count != 0

    return average_rating.round(2)
  end 
end
