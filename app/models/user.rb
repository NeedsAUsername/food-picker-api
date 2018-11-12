class User < ApplicationRecord
  has_many :restaurants

  devise :database_authenticable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # validates :username, :password, presence: true
  # validates :username, uniqueness: true, length: {minimum: 4}
  # validates :password, length: {minimum: 8}
end
