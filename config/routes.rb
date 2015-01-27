Rails.application.routes.draw do

  root 'pages#index'
  resources :sessions, only: [:create]
  delete "/log_out", to: "sessions#log_out"
  resources :users, only: [:create]
  resources :dashboards
  resources :bookclubs do
    resources :assigned_books
    resources :bookclub_users
  end

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/bookclubs/:bookclub_id/books/search', to: 'books#search', as: :books_search
end
