Rails.application.routes.draw do

  namespace :admin do
    resources :users
resources :orders
resources :profiles

    root to: "users#index"
  end

  root 'pages#index'

  get '/pricing' => 'pages#pricing'
  get '/termofuse' => 'pages#term'

  devise_for :users

  resources :users do
    resource :profile
  end

  resources :orders, only: [:index, :show, :new, :create]
end
