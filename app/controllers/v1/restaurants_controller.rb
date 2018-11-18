class V1::RestaurantsController < ApplicationController

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

  def destroy
    if current_user
      if @restaurant = current_user.restaurants.find_by(yelpNumber: params[:restaurantId])
        @restaurant.destroy
        
        render json: current_user.restaurants
      else
        render json: {status: 'Not found'}
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
