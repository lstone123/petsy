Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  # resources :users do
  resources :sitter_profiles, only: %i[index show] do
    resources :bookings, only: %i[edit update destroy]
  end
  resources :pets
  resources :bookings, only: %i[index show new create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
