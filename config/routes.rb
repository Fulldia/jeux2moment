Rails.application.routes.draw do


  resources :comments
  devise_for :users
  root to: 'pages#home'
  get 'pages/blog'
  get 'pages/blog2'
  get 'pages/list'
  get 'pages/blog3'
  get 'pages/blog4'
  get 'pages/blog5'
  get 'pages/blog6'
  get 'comment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
