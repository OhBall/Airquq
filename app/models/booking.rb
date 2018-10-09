# == Schema Information
#
# Table name: bookings
#
#  id            :bigint(8)        not null, primary key
#  listing_id    :integer          not null
#  guest_id      :integer          not null
#  checkin_date  :date             not null
#  checkout_date :date             not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Booking < ApplicationRecord
  validates :checkin_date, :checkout_date, presence: true

  belongs_to :listing 

  belongs_to :guest,
  foreign_key: :guest_id,
  class_name: :User
end
