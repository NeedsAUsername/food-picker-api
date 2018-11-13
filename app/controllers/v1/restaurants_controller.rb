class V1::RestaurantsController < ApplicationController

  def index
    # With the correct X-User-Email and X-User-Token in the header of the request, current_user will be set.
    # Otherwise, current_user will be nil.
    @restaurants = current_user.restaurants
    render json: @restaurants
  end
end
