Rails.application.routes.draw do
  resources :routines
  resources :exercises
  resources :users
  resources :user_badges, only: [:index, :show]
  resources :badges, only: [:index, :show]

  # resources :sessions(can do this as well only instructor made custome login urls)
  get '/login',  to: 'sessions#new', as: :login
   post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
