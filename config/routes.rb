Rails.application.routes.draw do

  devise_for :users
  resources :blogs
  resources :homes
  root to: 'blogs#index'
  

end
