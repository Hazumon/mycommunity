Rails.application.routes.draw do

  devise_for :users


  root 'index#index'
  get "/users/sign_in", to: "events#index"
  get "/login", to: "events#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# add location resources and embed events into it

   resources :users, only: [:index]
   resources :events, only: [:index, :new, :create, :show]
end
