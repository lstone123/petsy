Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users

  # resources :users do
  resources :sitter_profiles, only: %i[show new create edit update destroy] do
    resources :bookings, only: %i[edit update]
  end
  resources :pets, only: %i[show new create edit update destroy]
  resources :bookings
  resources :sitter_profiles, only: :index

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
