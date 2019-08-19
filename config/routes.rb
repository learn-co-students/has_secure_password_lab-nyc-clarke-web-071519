Rails.application.routes.draw do
  # resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/new', to: 'users#new'
  post '/users/new', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  root 'welcome#home'
end
