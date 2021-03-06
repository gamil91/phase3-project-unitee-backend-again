Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: [:index, :show]
  resources :carts, only: [:index, :show, :create, :destroy]
  resources :cart_items, only: [:index, :create, :update, :destroy]
  resources :users, only: [:index, :show, :create, :destroy]
  resources :purchases, only: [:index, :show, :create]

  get 'items/sort/:color', to: "items#sorted_by_color"
  get 'items/sales/true', to: "items#sale_items"


end
