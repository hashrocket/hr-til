Rails.application.routes.draw do
  root to: 'posts#index'

  resources :developers, only: :update
  resources :posts, param: :titled_slug
  resources :sessions, only: [:new, :create]

  get '/auth/google_oauth2', as: 'google_oauth2'
  get '/auth/google_oauth2/callback', to: 'sessions#create'
  get 'account/signout', to: 'sessions#destroy'
  get '/:name', to: 'tags#show', as: 'tags_show'
  get '/author/:username', to: 'developers#show', as: 'developers_show'
  get '/developer/profile', to: 'developers#profile', as: 'developers_profile'

  post '/post_preview', to: 'posts#preview'
end
