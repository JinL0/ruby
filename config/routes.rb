Rails.application.routes.draw do
  patch '/capture', to: 'pokemons#capture'
  patch '/damage', to: 'pokemons#damage'
  get '/new', to: 'pokemons#new'
  post '/new', to: 'pokemons#create'
  get '/index', to: 'home#index'

  root to: 'home#index'
  devise_for :trainers
  resources :trainers
end
