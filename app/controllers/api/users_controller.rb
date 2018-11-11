class Api::UsersController < ApplicationController
  # authenticate_user method provided by Knock::Authenticable
  before_action :authenticate_user, except: [:test]

  def current
    render json: current_user # method provided by Knock
  end

  # Just to see if the json is being rendered correctly
  def test
    @user = User.first
    render json: @user
  end
end
