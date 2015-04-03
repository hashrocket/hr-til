Rails.application.routes.draw do
  root to: 'posts#index'

  resources :developers, only: [:new, :create]
  resources :posts, only: [:new, :create, :show]

  get 'account/signup', to: 'developers#new'
  post 'account/signup', to: 'developers#create'
  get 'account/signin', to: 'sessions#new'
  post 'account/signin', to: 'sessions#create'
  get 'account/signout', to: 'sessions#destroy'
  get '/:name', to: 'tags#show'
  get '/author/:username', to: 'developers#show'
end
