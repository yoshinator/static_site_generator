Rails.application.routes.draw do
  
  root to: "static_pages#index"
  resources :users
  resources :pages
  resources :businesses
  resources :leads
  resource :cities
  resource :services
  get "/", to: "static_pages#index"
  get "/logout", to: "sessions#destroy"


  # Routes for Google authentication
  get "auth/:provider/callback", to: "sessions#googleAuth"
  get "auth/failure", to: redirect("/")

end
