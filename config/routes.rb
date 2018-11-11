Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get '/users/current' => 'users#current'
    post '/users/token' => 'user_toekn#create'
  end
end
