Rails.application.routes.draw do
  resources :categories
  resources :companies
  root to: 'companies#index'
end
