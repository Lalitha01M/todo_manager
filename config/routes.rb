Rails.application.routes.draw do


  # get "users", to: "users#index"
  get "/" => "home#index"
 # post "users/login", to: "users#login"
  # resources :users
  get "/signin" => "sessions#new", as: :new_session
  post "/signin" => "sessions#create", as: :session
  resources :todos
  resources :users

end
