class V1::SessionsController < ApplicationController

  def create #login
    @user = User.find_by(email: params[:email])
    if @user.valid_password?(params[:password])
      render json: @user
    else
      head(:unauthorized)
    end
  end

  def destroy #logout
  end

end
