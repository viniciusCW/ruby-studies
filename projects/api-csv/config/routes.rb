Rails.application.routes.draw do

  get '/lists', to: "lists#index"
  get '/lists/:id', to: "lists#show"
  get '/list/new', to: "lists#new"
  post '/create', to: "lists#create"
end
