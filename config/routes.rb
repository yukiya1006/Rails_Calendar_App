Rails.application.routes.draw do

  devise_for :users
  resources :blogs
  resources :homes
  resources :trainigs
  # root to: 'start#index'
  root to: 'blogs#index'
end
