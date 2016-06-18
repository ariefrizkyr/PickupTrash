Rails.application.routes.draw do
  root 'pages#index'

  get '/pricing' => 'pages#pricing'
  get '/termofuse' => 'pages#term'

  namespace :admin do
    resources :users
    resources :orders
    resources :profiles

    root to: "users#index"
  end

  devise_for :users

  resources :users do
    resource :profile
  end

  resources :withdraws, only: [:index, :new, :create]
  resources :orders, only: [:index, :show, :new, :create]
end
