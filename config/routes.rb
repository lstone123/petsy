Rails.application.routes.draw do
  root to: "sitter_profiles#index"
  devise_for :users
  # resources :users do
  resources :sitter_profiles do
    resources :bookings, only: %i[new create edit update]

  end
  resources :pets
  resources :bookings, only: %i[index show destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "sitter_profile", to: "sitter_profile#index", as: "sitter_profile"
end
