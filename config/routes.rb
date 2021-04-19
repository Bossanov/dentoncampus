Rails.application.routes.draw do

  root to: 'pages#home'
  resources "contacts", only: [:new, :create]
  get 'pages/dentonhub'
  get 'pages/formation'
  get 'pages/inclusion'
  get 'pages/incubateur'
  get 'pages/laboratoire'
  get 'pages/shop'
  get 'pages/services'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
