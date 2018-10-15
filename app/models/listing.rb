# == Schema Information
#
# Table name: listings
#
#  id               :bigint(8)        not null, primary key
#  name             :string           not null
#  host_id          :integer          not null
#  description      :text             not null
#  price            :float            not null
#  room_num         :integer          not null
#  bed_num          :integer          not null
#  bath_num         :integer          not null
#  air_conditioning :boolean          not null
#  heating          :boolean          not null
#  essentials       :boolean          not null
#  wifi             :boolean          not null
#  tv               :boolean          not null
#  washer           :boolean          not null
#  kitchen          :boolean          not null
#  free_parking     :boolean          not null
#  hair_dryer       :boolean          not null
#  shampoo          :boolean          not null
#  address          :string           not null
#  city             :string           not null
#  state            :string           not null
#  country          :string           not null
#  zipcode          :string
#  lat              :float            not null
#  lng              :float            not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null

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

  # def calculate_value 

  # end 

  # json 
  
  # json.value_avg @listing.calculate_value 
end
