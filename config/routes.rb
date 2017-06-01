Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :users, only: [:index, :show]
  resources :friendships, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
  root :to => 'posts#index'

  get 'auth/:provider/callback', to: 'sessions#create'


  get 'photo/index'
  get 'welcome/index'
  root 'welcome#index'
  resources :photo_albums, :photos
  resources :posts do
    resources :comments
  end
end
