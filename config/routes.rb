Rails.application.routes.draw do
 
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/', to: 'home#index', as: 'home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :journals
  resources :goals
  resources :micro_goals
  resources :resources
end
