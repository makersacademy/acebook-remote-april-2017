Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
  root :to => 'posts#index'

  get 'photo/index'
  get 'welcome/index'
  root 'welcome#index'

  resources :photo_albums

  resources :photos do
    resources :photo_comments
  end

  resources :posts do
    resources :comments
  end
end
