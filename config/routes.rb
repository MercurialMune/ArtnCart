Rails.application.routes.draw do

  devise_for :users
  devise_for :admins

  resources :categories, only: [:show]
  resources :products, only: [:index, :show]
  get 'welcome/index'
  root 'welcome#index'

  resource :cart, only: [:show] do
    put 'add/:product_id', to: 'carts#add', as: :add_to
    put 'remove/:product_id', to: 'carts#remove', as: :remove_from
    put 'remove_one/:product_id', to: 'carts#remove_one', as: :remove_one
  end

  resources :transactions, only: [:new, :create]
  resources :charges, only: [:new, :create]

  namespace :admin do
    root to: 'products#index'
    resources :products, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
  end
end
