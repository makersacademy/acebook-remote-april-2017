Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :users, only: [:index, :show]
  resources :friendships, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
  root :to => 'welcome#index'

  get 'photo/index'
  get 'welcome/index'
  root 'welcome#index'
  
  resources :photo_albums
  resources :photos do
    resources :comments
  end

  resources :groups, :memberships
  resources :posts do
    resources :comments
  end

  match :like, to: 'likes#create', as: :like, via: :post

end
