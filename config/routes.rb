Rails.application.routes.draw do
  get 'profile/:user_id/photo', to: 'profile#photo', as: 'profile_photo'
  get 'profile/:user_id/album', to: 'profile#album', as: 'profile_album'
  get 'profile/:user_id/follower', to: 'profile#follower', as: 'profile_follower'
  get 'profile/:user_id/following', to: 'profile#following', as: 'profile_following'
  resources :albums, :posts

  devise_for :users

  get 'follows/:id', to: 'follows#create', as: 'follow'
  resources :follows, only: :destroy
  # get 'follow/:user_id', to: 'follows#destroy', as: 'unfollow'
  
  
  root 'home#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
