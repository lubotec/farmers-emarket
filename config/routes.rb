Rails.application.routes.draw do
  root to: 'pages#home'
  get '/components', to: 'pages#components', as: 'components'

  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }

  resources :restaurants, only: [ :new, :create ]

  resources :orders, only: [:show]
  get 'my_active_order', to: 'orders#my_active_order', as: :restaurant_cart
  patch '/checkout_order/:id', to: "orders#checkout_order", as: :checkout
  get 'my_orders', to: 'orders#my_orders', as: :restaurant_orders

  resources :farmers, only: [:new, :create, :show ]

  resources :products do
    resources :order_products, only: [:create]
  end

  resources :order_products, only: [:destroy] do
    member do
      get 'increment'
      get 'decrement'
    end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
