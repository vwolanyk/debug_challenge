Rails.application.routes.draw do
  resources :invoices
  resources :categories
  resources :companies
  namespace :search do
    resources :companies, only: [:index]
  end
  namespace :api do
    namespace :search do
      resources :categories, only: [:index]
    end
  end
  root to: 'companies#index'
end
