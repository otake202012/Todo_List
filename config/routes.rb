Rails.application.routes.draw do
  get 'sessions/new'

  root   'users#home'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users, only:[:new, :create, :destroy, :edit, :show, :update]
  resources :tasks
end
