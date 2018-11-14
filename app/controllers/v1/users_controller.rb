class V1::UsersController < ApplicationController
  # no longer need a before_action: authenticate_user, because every request from the React frontend will be validated using the header email and token

  def current
    # With the correct X-User-Email and X-User-Token in the header of the request, current_user will be set.
    # Otherwise, current_user will be nil.
    render json: current_user
  end

  # Just to see if the json is being rendered correctly
  def test
    @user = User.first
    render json: @user
  end
end
