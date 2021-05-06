Rails.application.routes.draw do
  root 'sessions#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  post '/games', to: 'games#index'

  get '/auth/:provider/callback' => 'sessions#omniauth'

  resources :users

  resources :bets, only: [:index, :new, :create]
  resources :games, only: [:show, :index] do 
    resources :bets
  end
  
end
