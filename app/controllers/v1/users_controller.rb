class V1::UsersController < ApplicationController
  before_action :authenticate_user, except: [:test]

  def current
    render json: current_user
  end

  # Just to see if the json is being rendered correctly
  def test
    @user = User.first
    render json: @user
  end
end
