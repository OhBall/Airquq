# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  email           :string           not null
#  first_name      :string           not null
#  last_name       :string           not null
#  session_token   :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :session_token, presence: true, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :password_digest, presence: true
  validates_presence_of :email, :message => ": Please enter your Email."
  validates_uniqueness_of :email, :message => ": sorry, this email has already been taken."
  validates_presence_of :first_name, :message => ": Please enter your first name."
  validates_presence_of :last_name, :message => ": Please enter your last name."
  
  after_initialize :ensure_session_token

  attr_reader :password

  has_many :reviews,
  foreign_key: :author_id,
  class_name: :Review

  has_many :bookings, 
  foreign_key: :guest_id,
  class_name: :Booking

  has_many :listings,
  foreign_key: :host_id,
  class_name: :Listing

  has_many :received_reviews,
  through: :listings,
  source: :reviews

  has_one_attached :profile_photo

  def self.find_by_credentials(email, password)
    user = User.find_by_email(email);
    user && user.is_password?(password) ? user : nil
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

  def num_received_reviews
    self.received_reviews.length
  end 
end
