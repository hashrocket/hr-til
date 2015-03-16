Rails.application.routes.draw do
  root to: 'posts#index'

  resources :developers, only: [:new, :create]
  get 'account/signup' => 'developers#new'
  post 'account/signup' => 'developers#create'
end
