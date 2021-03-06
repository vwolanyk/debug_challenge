Rails.application.routes.draw do
  resources :invoices
  resources :categories
  resources :companies
  namespace :search do
    resources :companies, only: [:index]
  end
  namespace :api do
    resources :companies
    resources :categories
    get '/search/companies/:q' => 'companies#search'

  end
  root to: 'companies#index'
end
