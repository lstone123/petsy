Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users do
    resources :sitter_profiles, only: %i[show new create edit update destroy] do
      resources :bookings, only: %i[edit update]
    end
    resources :pets, only: %i[show new create edit update destroy]
    resources :bookings
  end

  resources :sitter_profiles, only: :index

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
