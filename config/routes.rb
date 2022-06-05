# frozen_string_literal: true

Rails.application.routes.draw do
  get 'splash/new'
  get 'splash/create'
  resources :proceedings
  resources :categories

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"
end
