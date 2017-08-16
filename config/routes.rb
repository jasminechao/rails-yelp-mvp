Rails.application.routes.draw do

  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#show"
  # get "restaurants/:id", to: "restaurants#show"

  # get "restaurants/:restaurant_id/new", to: "reviews#new"
  # post "restaurants/:restaurant_id/create", to: "reviews#create"

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end


  # resources :restaurants, only: [:index, :new, :show] do
  #   resources :reviews, only: [:new, :create]
  # end


  # For details on thte DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
