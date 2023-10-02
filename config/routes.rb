Rails.application.routes.draw do

  # Defines the root path route ("/")
  root "poets#index"
  resources :poems
  resources :poets

  # Defining the ratings routes
  get 'ratings', to: 'ratings#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
