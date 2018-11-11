class User < ApplicationRecord
  has_secure_password
  has_many :restaurants

  validates :username, :password, presence: true
  validates :username, uniqueness: true, length: {minimum: 4}
  validates :password, length: {minimum: 8}
end
