Rails.application.routes.draw do
  root 'pages#index'

  get '/pricing' => 'pages#pricing'
  get '/termofuse' => 'pages#term'
end
