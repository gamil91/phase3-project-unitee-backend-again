Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: [:index, :show]
  resources :carts, only: [:index, :show, :create, :destroy]
  resources :cart_items

  get 'items/sort/:color', to: "items#sorted_by_color"


end
