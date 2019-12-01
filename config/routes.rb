Rails.application.routes.draw do
  resources :stores
  resources :holidays
  resources :categories
  resources :places
  devise_for :users
  root 'stores#index'
end
