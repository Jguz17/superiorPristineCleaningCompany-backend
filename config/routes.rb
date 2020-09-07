# frozen_string_literal: true

Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :thrashes
      resources :messages
      resources :accepted_bookings
      resources :bookings
      
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
