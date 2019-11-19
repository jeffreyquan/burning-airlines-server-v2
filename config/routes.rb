Rails.application.routes.draw do
  root :to => 'flights#index'

  resources :users
  resources :reservations
  resources :flights
  resources :planes
end
