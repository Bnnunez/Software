Rails.application.routes.draw do

  resources :product_photos
  resources :pet_photos
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :adoption_pets
  resources :product_specifications
  resources :categories
  resources :colors
  resources :products
  get 'home/index'

  get 'home/about_us'

  get 'home/rescue'

  get 'home/contact'

  root 'home#index'


  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
