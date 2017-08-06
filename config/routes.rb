Rails.application.routes.draw do
  devise_for :users do
     get "/login" => "events#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# add location resources and embed events into it

  root 'index#index'
   resources :users, only: [:index]
   resources :events, only: [:index, :new, :create, :show]
end
