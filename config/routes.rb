Rails.application.routes.draw do
  root to: 'posts#index'

  resources :developers, only: [:new, :create]
  resources :posts, only: [:new, :create, :show, :edit, :update]

  get '/auth/:provider/callback', to: 'sessions#create_oauth'

  get 'account/signup', to: 'developers#new'
  post 'account/signup', to: 'developers#create'

  get 'authem/signin', to: 'sessions#new'
  get 'oauth/signin', to: 'sessions#new'
  post 'authem/signin', to: 'sessions#create_authem'
  post 'oauth/signin', to: 'sessions#create_oauth'

  get 'account/signout', to: 'sessions#destroy'
  get '/:name', to: 'tags#show', as: 'tags_show'
  get '/author/:username', to: 'developers#show', as: 'developers_show'
end
