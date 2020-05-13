Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/index'
  resources :posts
  resources :categories
  root to: "home#index"

  get '/about', :to => 'pages#about'
  get '/resources', :to => 'pages#resources'
  get '/contact', :to => 'pages#contact'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
