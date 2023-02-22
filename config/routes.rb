Rails.application.routes.draw do
  get 'restaurants/new'

  get "restaurants", to: "restaurants#index"

  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "restaurants", to: "restaurants#create"

  get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  patch "restaurants/:id", to: "restaurants#update"
end
