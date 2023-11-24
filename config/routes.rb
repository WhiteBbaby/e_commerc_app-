Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  authenticated :user do
    root 'profiles#show', as: :authenticated_root
  end

  get '/logout', to: 'profiles#logout', as: 'logout'

  
  resource :profiles, only: [:edit, :update, :destroy]
 
  delete 'profiles/:id', to: 'profiles#destroy', as: 'delete_profile'
  root 'home#index'

  # Defines the root path route ("/")
  # root "posts#index"
end

#Rails.application.routes.draw do
# devise_for :users, :controllers => {
#   :registrations => "users/registrations"
# }
# root to: 'home#index'
#end
