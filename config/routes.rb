Rails.application.routes.draw do
  devise_for :users
  root 'chatrooms#index'

  resources :chatrooms do
    resource :chatroom_user, only: [:create, :destroy]
    resource :message
  end
end
