# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'splash/new'
  get 'splash/create'
  resources :proceedings
  resources :categories

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  unauthenticated do
    root "splash#index"
  end

  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end
end
