Rails.application.routes.draw do
  get 'cart/show'
  resources :electronics
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Rails.application.routes.draw do
  resources :carts
  get 'cart/show', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  
  get 'up' => 'rails/health#show', as: :rails_health_check

  authenticated :user do
    root 'profiles#show', as: :authenticated_root
  end

  get '/logout', to: 'profiles#logout', as: 'logout'

  resource :profiles, only: %i[edit update destroy]

  delete 'profiles/:id', to: 'profiles#destroy', as: 'delete_profile'
  root 'home#index'

  # Defines the root path route ("/")
  # root "posts#index"
end
