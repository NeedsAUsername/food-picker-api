class Restaurant < ApplicationRecord
  validates :yelpNumber, presence: true
  belongs_to :user 
end
