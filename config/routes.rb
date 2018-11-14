Rails.application.routes.draw do
  resources :routines
  resources :exercises
  resources :users
  resources :user_badges
  resources :badges, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
