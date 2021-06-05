Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :pets do
    resources :enquiries, only: [:new, :create]
    
  end

  resources :conversations, only: [:index, :show, :new, :create] do
    resources :messages, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :enquiries, only: [:index, :show, :edit, :update, :destroy]
  get 'profile', action: :show, controller: 'users'
  get 'preference', action: :edit, controller: 'users'
end
