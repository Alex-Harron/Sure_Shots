Rails.application.routes.draw do
  root 'sessions#home'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :games, only: [:index, :show]
end
