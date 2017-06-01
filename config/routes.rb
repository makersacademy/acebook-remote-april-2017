Rails.application.routes.draw do
  get 'sessions/create'

  root 'users#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
  root :to => 'posts#index'

  get 'photo/index'
  get 'welcome/index'
  root 'welcome#index'
  resources :photo_albums, :photos
  resources :posts do
    resources :comments
  end
end
