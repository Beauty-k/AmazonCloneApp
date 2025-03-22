Rails.application.routes.draw do

  get "products/index"
  get "sessions/new"
  
  resources :users, path: 'register_new_user'
  resources :products, only: [:index, :show]
 
  resources :cart_items, only: [:index, :show, :create, :destroy]
  # resources :shipping_addresses
  resources :shipping_addresses

  # delete '/shipping_address',to: 'shipping_addresses#destroy'


  resources :checkout, only: [:show, :create]
  resources :orders

  get 'cart', to: 'carts#show', as: 'cart'
  get "/checkout", to: "checkout#show"
  delete '/cart_item',to: 'cart_items#destroy'
  
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get "up" => "rails/health#show", as: :rails_health_check
  get "/render_profile", to: "users#render_profile"
  get "/office_product", to: "amazon_clone#render_products"
  root "home#index"

end
