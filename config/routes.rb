Rails.application.routes.draw do

  # Defines the root path route ("/")
  root "poets#index"
  resources :poems
  resources :poets

  # Defining the ratings routes
  get 'ratings', to: 'ratings#index' # this is the route that displays all ratings
  get 'ratings/new', to: 'ratings#new' # this is the route that displays the form
  post 'ratings', to: 'ratings#create' # this is the route that the form submits to





  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
