Rails.application.routes.draw do
  root :to => "actors#index"
  resources :reviews
  resources :bookmarks
  resources :characters
  resources :movies
  resources :directors
  resources :actors
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
