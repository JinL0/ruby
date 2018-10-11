Rails.application.routes.draw do
  root to: "main#index"
  get 'cities/view', to: 'cities#view'
  post 'cities/new', to: 'cities#create'
  post '/cities/update', to: 'cities#view'
end
