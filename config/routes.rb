Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Create
  get 'products/new', to: 'products#new'
  post 'products/:id', to: 'products#create'

  # Read
  get 'products', to: 'products#index', as: :products
  get 'products/:id', to: 'products#show', as: :product

  # Update
  get 'products/:id', to: 'products#edit'
  patch 'products/:id', to: 'products#update'

  # delete
  delete 'products/:id', to: 'products#destroy'
end
