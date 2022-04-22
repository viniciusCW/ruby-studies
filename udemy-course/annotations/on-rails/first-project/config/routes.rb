Rails.application.routes.draw do
  resources :articles

  # ex 1
  # root 'application#hello'

  #ex 2
  root 'pages#home'

  get 'about', to: 'pages#about'
end
