Rails.application.routes.draw do
  get 'photo/index'
  get 'welcome/index'

  root 'welcome#index'

  resources :photo_albums, :photos
  resources :posts do
    resources :comments
  end
end
