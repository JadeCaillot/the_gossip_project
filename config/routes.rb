Rails.application.routes.draw do
  get 'cities/index'
  get 'cities/show'
  get 'cities/edit'
  get 'cities/update'
  get "/team", to: "team#index_team"
  get "/contact", to: "contact#index_contact"
  get "/landing", to:"landing_page#index_landing"  
  post "/", to:"gossips#index"
  get "/welcome/:first_name", to:"gossips#index"

  root "gossips#index" 

  resources :gossips
  resources :cities
  resources :comments


  get "/auteur/:id", to: "auteur_potin#show_auteur", as: 'user_id'
end
