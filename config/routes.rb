Rails.application.routes.draw do
  
  root to: "static_pages#index"
  resources :users
  resources :businesses
  resources :leads
  resource :cities
  resource :services
  get "/", to: "static_pages#index"
  get "/logout", to: "sessions#destroy"


  # Routes for Google authentication
  # /auth/google_oauth2 <-- sign in middleware
  get "auth/:provider/callback", to: "sessions#googleAuth"
  get "auth/failure", to: redirect("/")


  # static pages 
  get "/about", to: "static_pages#about"
  get "/septic", to: "static_pages#septic"
  get "/excavation", to: "static_pages#excavation"
  get "/sewer-and-drain", to: "static_pages#sewer_drain"
  get "/grease-trap", to: "static_pages#grease_trap"
  get "/emergency", to: "static_pages#emergency"
  get "/septic-tank-cleaning-pumping-browns-mills-nj", to: "static_pages#septic_browns_mill"
  get "/septic-tank-cleaning-pumping-burlington-nj", to: "static_pages#septic_burlington"
  get "/septic-tank-cleaning-pumping-cinnaminson-nj", to: "static_pages#septic_cinnaminson"
  get "/septic-tank-cleaning-pumping-fort-dix-nj", to: "static_pages#septic_fort_dix"
  get "/septic-tank-cleaning-pumping-maple-shade-nj", to: "static_pages#septic_maple_shade"
  get "/septic-tank-cleaning-pumping-marlton-nj", to: "static_pages#septic_marlton"
  get "/septic-tank-cleaning-pumping-medford-nj", to: "static_pages#septic_medford"
  get "/septic-tank-cleaning-pumping-tabernacle-nj", to: "static_pages#septic_tabernacle"
  get "/septic-tank-cleaning-pumping-willingboro-nj", to: "static_pages#septic_willingboro"
  get "/septic-tank-cleaning-pumping-camden-county-nj", to: "static_pages#septic_camden_county"
end
