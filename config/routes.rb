Rails.application.routes.draw do


  # get "users", to: "users#index"
  get "/", to: "home#index"
  post "users/login", to: "users#login"
  resources :users
  resources :todos

end
