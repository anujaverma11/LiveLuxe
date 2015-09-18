Rails.application.routes.draw do


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'hotels#new'
  post '/hotels' => 'hotels#create'
  # get "log_out" => "sessions#destroy", :as => "log_out"
  # get "log_in" => "sessions#new", :as => "log_in"
  # get "sign_up" => "hotels#new", :as => "sign_up"

  resources :hotels
  resources :sessions

  root "visitors#index"

end