Rails.application.routes.draw do
  devise_for :users
  root 'messages#new'
  resources :messages, only: [:create]
  resources :users, only: [:edit, :update]
  resources :users do
    collection do
      delete 'destroy_all'
    end
  end
end