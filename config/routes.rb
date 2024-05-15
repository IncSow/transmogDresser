Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :body_parts
  resources :sizes
  resources :outfits
  resources :pieces
  resources :users do
    member do
      # TODO : get dashboard OUT of users, use a show logic instead.
      get 'dashboard'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root "home#index"

  # Defines the root path route ("/")
  # root "posts#index"
end
