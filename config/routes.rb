Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :products
  resources :keywords
  resources :categories
  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
