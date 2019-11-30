Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/users", to: "users#index", as: "users"
  get "/users/eager", to: "users#eager", as: "eager_users"
  get "/listings", to: "listings#index", as: "listings"
  get "/listings/eager", to: "listings#eager", as: "eager_listings"
end
