Rails.application.routes.draw do
  devise_for :users
  get 'home/about', to:'homes#about'
  root to:'homes#top'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
end
