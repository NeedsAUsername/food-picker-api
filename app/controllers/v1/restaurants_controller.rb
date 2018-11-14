class V1::RestaurantsController < ApplicationController

  def index
    # With the correct X-User-Email and X-User-Token in the header of the request, current_user will be set.
    # Otherwise, current_user will be nil.
    if current_user
      @restaurants = current_user.restaurants
      render json: @restaurants
    else
      head(:unauthorized)
    end 
  end
end
