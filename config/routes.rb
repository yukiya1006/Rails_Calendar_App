Rails.application.routes.draw do

  get 'users/show'
  get 'users/create'
  devise_for :users
  resources :blogs
  resources :homes
  resources :users
  root to: 'homes#top'
end
