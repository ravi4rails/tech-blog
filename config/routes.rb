Rails.application.routes.draw do
  resources :subjects
  resources :categories
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords', confirmations: 'users/confirmations'}
  get 'home/index'

  root to: "home#index"
  resources :articles
end
