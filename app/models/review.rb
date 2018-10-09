# == Schema Information
#
# Table name: reviews
#
#  id            :bigint(8)        not null, primary key
#  author_id     :integer          not null
#  listing_id    :integer          not null
#  body          :text             not null
#  accuracy      :integer
#  location      :integer
#  communication :integer
#  check_in      :integer
#  cleanliness   :integer
#  value         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Review < ApplicationRecord
  validates :body, presence: true

  belongs_to :author,
  foreign_key: :author_id,
  class_name: :User

  belongs_to :listing
end
