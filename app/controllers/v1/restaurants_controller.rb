class V1::RestaurantsController < ApplicationController

  def index
    # With the correct X-User-Email and X-User-Token in the header of the request, current_user will be set.
    # Otherwise, current_user will be nil.
    if current_user
      @restaurants = current_user.restaurants
      render json: @restaurants
    else
      # head(:unauthorized)   decided not to do this, because it's easier to just check the status in react
      render json: {status: 'Not logged in'}
    end
  end

  def create
    if current_user
      if current_user.restaurants.find_by(yelpNumber: params[:restaurantId])
        render json: {status: 'Already Saved'}
      else
        current_user.restaurants.build(yelpNumber: params[:restaurantId])
        current_user.save
        render json: current_user.restaurants
      end
    else
      render json: {status: 'Not logged in'}
    end
  end

  private
    def restaurant_params
      params.permit(:restaurantId)
    end
end
