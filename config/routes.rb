Rails.application.routes.draw do
  get 'ui(/:action)', controller: 'ui'

  root to: 'posts#index'

  resource :profile, controller: 'developers', only: %i[update edit]

  resources :posts, except: :destroy, param: :titled_slug
  resources :statistics, only: :index do
    collection do
      get 'tag_posts_counts'
      get 'author_posts_counts'
      get 'post_days_counts'
    end
  end

  get '/login' => redirect('/auth/google_oauth2')
  get '/auth/google_oauth2', as: 'google_oauth2'
  get '/auth/google_oauth2/callback', to: 'sessions#create'

  get 'account/signout', to: 'sessions#destroy'
  get '/:name', to: 'tags#show', as: 'tags_show'
  get '/author/:username', to: 'developers#show', as: 'developers_show'
  post '/post_preview', to: 'posts#preview'
  get '/posts/:titled_slug.md', to: 'posts#show', as: 'post_text'
end
