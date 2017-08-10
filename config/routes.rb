Rails.application.routes.draw do

  devise_for :users

  # get "/users/sign_in", to: "events#index"
  # get "/login", to: "events#index"
  root 'index#index'

   resources :users, only: [:index]
   resources :events, only: [:index, :new, :create, :show]
end
