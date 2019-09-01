Rails.application.routes.draw do
  resources :product_categories
  resources :categories
  resources :products
  get 'welcome/index'
  root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
