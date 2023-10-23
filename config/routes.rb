Rails.application.routes.draw do

  # Defines the root path route ("/")
  root "poets#index"
  resources :poems
  resources :poets

  # Defining routes for deleting ratings
  resources :ratings, only: [:index, :new, :create, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
