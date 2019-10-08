Rails.application.routes.draw do
  
  root to: "static_pages#index"
  resources :users
  resources :pages
  resources :businesses
  resource :cities
  resource :services
  get "/", to: "static_pages#index"
  get "/logout", to: "sessions#destroy"

  get "/leads", to: "leads#index"
  post "/leads", to: "leads#create"

  # Routes for Google authentication
  get "auth/:provider/callback", to: "sessions#googleAuth"
  get "auth/failure", to: redirect("/")

end
