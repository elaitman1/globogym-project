Rails.application.routes.draw do
  resources :routines
  resources :exercises
  resources :users
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout
  resources :user_badges
  resources :badges, only: [:index, :new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
