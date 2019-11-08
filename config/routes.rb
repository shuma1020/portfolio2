Rails.application.routes.draw do
  resources :posts
  resources :users, :only => [:index, :new]
  get 'home/index'
  get 'home/authentication'
  devise_for :users, :posts
  root 'users#index'
  get "users/index"
  end
