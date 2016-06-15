Rails.application.routes.draw do
  root 'pages#index'

  devise_for :users

  resources :users do
    resource :profile
  end
  
  get '/pricing' => 'pages#pricing'
  get '/termofuse' => 'pages#term'
end
