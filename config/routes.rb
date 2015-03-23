Rails.application.routes.draw do
  root to: 'posts#index'

  resources :developers, only: [:new, :create]
  get 'account/signup' => 'developers#new'
  post 'account/signup' => 'developers#create'
  get 'account/signin' => 'sessions#new'
  post 'account/signin' => 'sessions#create'
  get 'account/signout' => 'sessions#destroy'
  resources :posts, only: [:new, :create]
  get '/:name', to: 'tags#show'
end
