Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }
  root to: 'pages#home'
  resources :products
  resources :restaurants, only: [ :new, :create ]
  resources :farmers, only: [:new, :create, :show ]
  resources :orders, only: [:show, :my_orders]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
