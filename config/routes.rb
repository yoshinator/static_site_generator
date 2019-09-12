Rails.application.routes.draw do
  resources :users
  resources :pages
  get "/", to: "static_pages#index"
  get "/logout", to: "sessions#destroy"
  root to: "static_pages#index"


  # Routes for Google authentication
  get "auth/:provider/callback", to: "sessions#googleAuth"
  get "auth/failure", to: redirect("/")

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
