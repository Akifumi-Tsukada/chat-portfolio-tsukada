Rails.application.routes.draw do
  devise_for :users
  root 'messages#new'
  resources :messages, only: [:create]
  resources :users, only: [:edit, :update]
end