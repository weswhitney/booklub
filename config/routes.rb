Rails.application.routes.draw do

  root 'pages#index'
  resources :sessions, only: [:create]
  delete "/log_out", to: "sessions#log_out"
  resources :users, only: [:create]
  resources :dashboards
  resources :bookclubs
  resources :books

  get '/auth/:provider/callback', to: 'sessions#create'
end
