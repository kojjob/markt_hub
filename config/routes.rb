Rails.application.routes.draw do

  resources :products
  devise_for :views
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

 
   root "products#index"
   get "/carts/:id", to: "carts#show", as: :cart
end
