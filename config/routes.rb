Rails.application.routes.draw do
  root to: 'pages#home'
  get '/components', to: 'pages#components', as: 'components'

  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }

  resources :restaurants, only: [ :new, :create ]

  resources :orders, only: [:show, :my_orders]

  resources :farmers, only: [:new, :create, :show, :index ]
  
  resources :products do
    resources :order_products, only: [:create]
  end

  resources :order_products, only: [:destroy]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
