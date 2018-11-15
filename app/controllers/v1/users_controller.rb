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

  def create
    if User.find_by(email: params[:email])
      render json: {status: 'Email taken'}
    else
      @user = User.new(user_params)
      if @user.save
        render json: @user
      else
        render json: {status: 'Error'}
      end
    end
  end

  private
    def user_params
      params.permit(:email, :password)
    end
end
