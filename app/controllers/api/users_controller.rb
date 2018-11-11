class Api::UsersController < ApplicationController
  before_action :authenticate_user # method provided by Knock::Authenticable

  def current
    render json: current_user # method provided by Knock
  end

end
