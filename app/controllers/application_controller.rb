class ApplicationController < ActionController::API
  include Knock::Authenticable # provides the authenticate_user method
end
