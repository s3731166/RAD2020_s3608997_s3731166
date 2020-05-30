Rails.application.routes.draw do
  root 'home#index'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  resources :users
  resources :posts do 
    resources :comments 
  end
  resources :topics


  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'deletePost', to: 'posts#destroy', as: 'deletePost'

end
