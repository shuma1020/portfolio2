Rails.application.routes.draw do
  resources :posts
  get 'home/index'
  get 'home/authentication'
  devise_for :users
  root 'users#index'
  get "users/index"
  end
