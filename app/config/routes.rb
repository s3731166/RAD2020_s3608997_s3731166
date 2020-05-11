Rails.application.routes.draw do
  resources :topics
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'home#index'

  resources :users
  resources :posts
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'deletePost', to: 'posts#destroy', as: 'deletePost'

end
