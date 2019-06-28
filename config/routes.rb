Rails.application.routes.draw do
  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :test
  config.action_mailer.default_url_options = { host: 'localhost:3000' }
  resources :users
  resources :account_activations, only: [:edit]
end