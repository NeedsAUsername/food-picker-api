class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :authentication_token
  has_many :restaurants

  class RestaurantSerializer < ActiveModel::Serializer
    attributes :yelpNumber
  end
end
