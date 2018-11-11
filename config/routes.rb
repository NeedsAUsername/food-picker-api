Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get '/users/current' => 'users#current'
    get '/users/test' => 'users#test' #just a test route
    post '/users/token' => 'user_token#create'
  end
end
