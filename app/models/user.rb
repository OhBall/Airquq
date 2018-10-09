# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  email           :string           not null
#  first_name      :string           not null
#  last_name       :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :username, :session_token, presence: true, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :password_digest, :email, :first_name, :last_name, presence: true

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

  def self.find_by_credentials(username, password)
    user = User.find_by_username(username);
    user && user.is_password?(password) ? user : nil
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(passoword)
    @passoword = passoword
    self.password_digest = BCrypt::Password.create(passoword)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end
end
