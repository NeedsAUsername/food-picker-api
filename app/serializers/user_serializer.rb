class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :restaurants

  class RestaurantSerializer < ActiveModel::Serializer
    attributes :yelpNumber
  end
end
