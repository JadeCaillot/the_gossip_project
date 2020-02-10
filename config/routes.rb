Rails.application.routes.draw do
  get 'potin/show'
  get "/team", to: "team#index_team"
  get "/contact", to: "contact#index_contact"
  get "/", to:"landing_page#index_landing"
  post "/", to:"welcome#index_potins"
  get "/welcome/:first_name", to:"welcome#index_potins"
  root "welcome#index_potins"
  get "/potin/:id", to: "potin#show_potin", as: "potin_id"
end
