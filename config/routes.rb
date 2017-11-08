Rails.application.routes.draw do
  root to: "restaurants#index"

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:index, :new, :create]
  end

  # View
  # get 'restaurants', to: 'restaurants#index'

  # Create
  # get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # post 'restaurants', to: 'restaurants#create'

  # Show
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # Create
  # get 'reviews/new', to: 'reviews#new', as: 'new_review'
  # post 'reviews', to: 'reviews#create'

end

  # Admin

  # Edit
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  # patch 'restaurants/:id', to: 'restaurants#update'

  # Delete
  # delete 'restaurants/:id', to: 'restaurants#destroy'
