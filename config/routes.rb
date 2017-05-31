Rails.application.routes.draw do
  get 'photo/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :photo_albums, :photos
  resources :posts do
    resources :comments
  end
end
