Rails.application.routes.draw do

  root to: 'users#index'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  
  get '/home', to: 'users#index'
  get '/profile', to: "users#profile", as: "my_profile"
  get '/signup', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy', as: 'delete_user'

  get '/games', to: 'games#index', as: 'index_games'
  get '/games/new', to: 'games#new', as: 'new_game'
  post '/games/new', to: 'games#create'
  get '/games/:id/edit', to: 'games#edit', as: 'edit_game'
  patch '/games/:id', to: 'games#update'
  get '/games/:id', to: 'games#show', as: 'show_game'
  delete '/games/:id', to: 'games#destroy', as: 'delete_game'

end
