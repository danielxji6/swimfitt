Rails.application.routes.draw do
  resources :workouts
  root to: "users#index"
  resources :users

  get '/api/users/:id', to: 'users#show'
  post '/api/users/', to: 'users#create'
  patch '/api/users/:id', to: 'users#update'

  get '/api/users/:user_id/workouts', to: 'workouts#index'
  get '/api/users/:user_id/workouts/:id', to: 'workouts#show'
  post '/api/users/:user_id/workouts', to: 'workouts#create'
end
