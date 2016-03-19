Rails.application.routes.draw do
  root to: "user#index"
  resources :strokes
  resources :workouts
  resources :users
end
