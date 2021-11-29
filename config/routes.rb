Rails.application.routes.draw do


  # get "users", to: "users#index"
  get "/" => "home#index"
 # post "users/login", to: "users#login"
  # resources :users
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session
  resources :todos
  resources :users

end
