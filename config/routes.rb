Rails.application.routes.draw do
  root "home#top"

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'session#destroy'
  resources :users
end
