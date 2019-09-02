Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  
  resources :categories, only: [:show]
  resources :products, only: [:index, :show]
  get 'welcome/index'
  root 'welcome#index'

  namespace :admin do
    root to: 'products#index'
    resources :products, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
