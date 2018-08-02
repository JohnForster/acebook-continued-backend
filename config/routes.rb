
Rails.application.routes.draw do
  get 'users/new'
  resources :posts do
    resources :comments
  end


  root 'welcome#index'

# frozen_string_literal: true


Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new' # Is this line needed?
  get     '/signup',  to: 'users#new'
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
  resources :users
  resources :posts

end
