Rails.application.routes.draw do
  get 'gossips/new'
  get 'gossips/create'
  get "/team", to: "team#index_team"
  get "/contact", to: "contact#index_contact"
  get "/landing", to:"landing_page#index_landing"
  post "/", to:"welcome#index_potins"
  get "/welcome/:first_name", to:"welcome#index_potins"
  root "welcome#index_potins"
  get "/potin/:id", to: "potin#show_potin", as: "potin_id"
  get "/auteur/:id", to: "auteur_potin#show_auteur", as: 'user_id'
  resources :gossips, only: [:new, :create]
end
