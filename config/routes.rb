Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/blog'
  get 'pages/blog2'
  get 'pages/list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
