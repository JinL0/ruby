Rails.application.routes.draw do
  patch '/capture', to: 'pokemons#capture'
  #post '/trainers/create', to: 'pokemons#create'

  root to: 'home#index'
  devise_for :trainers
  resources :trainers
end
