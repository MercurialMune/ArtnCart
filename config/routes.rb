Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  resources :products, only: [:show]
  get 'welcome/index'
  root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
