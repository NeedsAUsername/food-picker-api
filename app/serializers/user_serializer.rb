class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :restaurants

  class RestaurantSerializer < ActiveModel::Serializer
    attributes :yelpNumber
  end
end
