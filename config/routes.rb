Rails.application.routes.draw do
  
  root to: "static_pages#index"
  resources :users
  resources :businesses
  resources :leads

  post "/cities/new", to: "cities#link_city"
  patch "/cities/new", to: "cities#unlink_city"
  resources :cities

  post "/services/new", to: "services#link_business"
  patch "/services/new", to: "services#unlink_business"
  resources :services

  get "/businesses/:business_id/:service_id/:city_id", to: "static_pages#page"

  # Routes for Google authentication
  # /auth/google_oauth2 <-- sign in middleware
  # and to log out
  get "auth/:provider/callback", to: "sessions#googleAuth"
  get "auth/failure", to: redirect("/")
  get "/logout", to: "sessions#destroy"

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
