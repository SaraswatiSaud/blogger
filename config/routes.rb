Rails.application.routes.draw do

  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :tags
  resources :authors
  resources :view_count

  resources :author_sessions, only: [ :new, :create, :destroy]

  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'

  get 'months', to: 'months#index'
  resources :months





end
