Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }

  resources :restaurants, only: [ :new, :create ]

  resources :orders, only: [:show, :my_orders]

  resources :farmers, only: [:new, :create, :show ]

  resources :products do
    resources :order_products, only: [:create]
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
