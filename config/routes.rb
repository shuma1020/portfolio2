Rails.application.routes.draw do
  post "posts/:id/update" => "posts#update"
  get "posts/:id/book" => "posts#book"
  resources :posts, only: [:index, :create, :new, :show, :destroy, :edit]
  resources :users, :only => [:index, :new]
  get 'home/index'
  get 'home/authentication'
  devise_for :users, :posts
  root 'users#index'
  get "users/index"
  end
