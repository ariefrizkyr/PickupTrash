Rails.application.routes.draw do
  root 'pages#index'
  
  get '/pricing' => 'pages#pricing'
  get '/termofuse' => 'pages#term'

  devise_for :users
  devise_for :admins

  resources :users do
    resource :profile
  end

  resources :orders, only: [:index, :show, :new, :create]
end
