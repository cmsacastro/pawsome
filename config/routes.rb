Rails.application.routes.draw do
  devise_for :users

  # This might break it (EDIT: it doesn't, but doesn't use the profile url)
  resources :users do
  end
  
  resources :pets do
    resources :enquiries, only: [:new, :create]
    resources :favorite_pets
  end

  resources :conversations, only: [:index, :show, :new, :create] do
    resources :messages, only: :create
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :enquiries, only: [:index, :show, :edit, :update, :destroy]
  get 'profile', action: :show, controller: 'users'
  get 'preference', action: :edit, controller: 'users'
  get 'update_preferences', to: "users#update_preferences", as: "update_preferences"

  root to: 'pages#home'
end
