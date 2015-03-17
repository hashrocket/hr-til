Rails.application.routes.draw do
  root to: 'posts#index'

  resources :developers, only: [:new, :create]
  get 'account/signup' => 'developers#new'
  post 'account/signup' => 'developers#create'
  get 'account/signin' => 'sessions#new'
  post 'account/signin' => 'sessions#create'
end
