Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui' unless Rails.env.production?

  root to: 'posts#index'

  resource :profile, controller: 'developers', only: %i(update edit)
  resources :developers, path: '/authors', only: 'show'

  resources :posts, except: :destroy, param: :titled_slug
  resources :statistics, only: :index

  get '/admin' => redirect('/auth/google_oauth2')
  get '/auth/google_oauth2', as: 'google_oauth2'
  get '/auth/google_oauth2/callback', to: 'sessions#create'

  get '/account/signout', to: 'sessions#destroy'
  get '/posts_drafts', to: 'posts#drafts', as: :drafts
  get '/random', to: 'posts#random', as: :random

  resources :channels, path: '/', only: :show
  post '/post_preview', to: 'posts#preview'

  get '/posts/:titled_slug.md', to: 'posts#show', as: 'post_text'

  post '/posts/:slug/like', to: 'posts#like'
  post '/posts/:slug/unlike', to: 'posts#unlike'
end
