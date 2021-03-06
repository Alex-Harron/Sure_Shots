Rails.application.routes.draw do
  root 'sessions#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/games/new', to: 'games#new'
  post '/games', to: 'games#create'

  get '/auth/:provider/callback' => 'sessions#omniauth'

  resources :users #index, show, new, edit, create, update, and destroy

  resources :games, only: [:show, :index] do 
    resources :bets
  end
end
