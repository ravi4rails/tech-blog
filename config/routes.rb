Rails.application.routes.draw do
  resources :subjects do
    member do
      get :subject_attachment
      post :add_new_attachment
    end
  end
  resources :categories
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords', confirmations: 'users/confirmations'}
  get 'home/index'
  resources :users
  root to: "home#index"
  resources :articles
end
