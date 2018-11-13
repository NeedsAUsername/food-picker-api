Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do
    get '/users/current' => 'users#current'
    get '/restaurants' => 'restaurants#index'

    get '/users/test' => 'users#test' #just a test route

    post '/sessions' => 'sessions#create' #login
  end
end
