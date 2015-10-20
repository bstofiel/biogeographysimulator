Rails.application.routes.draw do
  resources :islands
  resources :mainlands
  resources :projects
  root to: 'projects#index'
  devise_for :users
  resources :users
end
