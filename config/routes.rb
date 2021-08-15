Rails.application.routes.draw do
  get 'profile/:user_id/photo', to: 'profile#photo', as: 'profile_photo'
  get 'profile/:user_id/album', to: 'profile#album', as: 'profile_album'
  resources :albums, :posts
  
  devise_for :users
  root 'home#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
