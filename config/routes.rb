Rails.application.routes.draw do
  root to: "main#index"
  get 'cities/view', to: 'cities#view'
  get 'cities/new', to: 'cities#create'
  get 'cities/update', to: 'cities#update'
  post 'cities/update', to: 'cities#update'
  post 'cities/new', to: 'cities#create'
  post '/cities/update', to: 'cities#view'
end
