Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  get '/components', to: 'pages#components', as: 'components'
  resources :products
  resources :restaurants, only: [ :new, :create ]
  resources :farmers, only: [:new, :create, :show ]
  get 'my_products', to: 'products#my_products', as: 'farmer_products'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
