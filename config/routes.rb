Rails.application.routes.draw do
  
  devise_for :users
  root to: 'questions#index'
  resources :questions, only: [:index, :new, :create, :show] do
    resources :answers, only: :create
  end
  resources :profiles, only: [:index, :new, :create, :show]
  resources :chat_rooms, only: [:index, :new, :create]

end
