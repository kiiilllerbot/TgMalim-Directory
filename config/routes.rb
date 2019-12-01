Rails.application.routes.draw do
  resources :public_holidays
  resources :stores
  resources :holidays
  resources :categories
  resources :places
  devise_for :users
  root 'stores#index'
end
