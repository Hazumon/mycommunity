Rails.application.routes.draw do

  devise_for :users

  # get "/users/sign_in", to: "events#index"
  # get "/login", to: "events#index"
  get '/descriptions', to: 'descriptions#index' 
  root 'index#index'

   resources :users, only: [:index]
   resources :events, only: [:index, :new, :create, :show]
   resources :meetups, only: [:index]
end
