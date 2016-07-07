Rails.application.routes.draw do
  namespace :api do
    namespace :v0 do
      resources :ping, only: [:index], constraints: {format: /(json)/}
    end
    namespace :v1 do
      get 'restaurant_data', controller: :restaurant_data, action: :index, as: :restaurant
      get 'category_data', controller: :category_data, action: :index, as: :category
    end
  end
  resources :restaurants, only: [:show]
  #get 'restaurant/:id', controller: :restaurants, action: :show
  resources :dishes
  post 'add_to_cart', controller: :dishes, action: :add_to_cart
  devise_for :users, controllers: { registrations: :registrations }
  root 'landing#index'
  get :search_restaurants, controller: :landing, action: :search_restaurants
end
