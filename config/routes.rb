Rails.application.routes.draw do
  resources :recipes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users, 
    controllers: { 
      omniauth_callbacks: 'users/omniauth_callbacks',
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      }, 
    defaults: { format: :json }
    
  namespace :users do
    get '/member-data', to: 'members#show'
  end

  resources :pantries

end
