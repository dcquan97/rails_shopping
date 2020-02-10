Rails.application.routes.draw do
root :to => 'products#index'
  get 'session/new'

  get     "login"    => "sessions#new"
  post    "login"    => "sessions#create"
  delete  "logout"   => "sessions#destroy"

  devise_for :users
  resources :products
  resources :users
  resources :carts
  resources :cart_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "devise/sessions#destroy"
  end
end
