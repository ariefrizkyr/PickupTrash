Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'

  get '/pricing' => 'pages#pricing'
  get '/termofuse' => 'pages#term'
end
