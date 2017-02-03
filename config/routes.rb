Rails.application.routes.draw do
  default_url_options host: ENV.fetch('host'), protocol: ENV.fetch('protocol')

  unless Rails.env.production?
    namespace 'ui' do
      get '/', action: 'index'
      %w(author_index drafts home post_edit post_show statistics tag_index).each do |action|
        get action, action: action
      end
    end
  end

  root to: 'posts#index'

  # Bot redirects
  get 'wp-login.php' => redirect('/')
  get 'authors/wp-login.php' => redirect('/')

  resource :profile, controller: 'developers', only: %i(update edit)
  resources :developers, path: '/authors', only: 'show'

  resources :posts, except: :destroy, param: :titled_slug
  resources :statistics, only: :index

  get '/admin' => redirect('/auth/google_oauth2')
  get '/auth/google_oauth2', as: 'google_oauth2'
  get '/auth/google_oauth2/callback', to: 'sessions#create'

  get 'account/signout', to: 'sessions#destroy'
  get '/posts_drafts', to: 'posts#drafts', as: :drafts

  resources :channels, path: '/', only: :show
  post '/post_preview', to: 'posts#preview'

  get '/posts/:titled_slug.md', to: 'posts#show', as: 'post_text'

  post '/posts/:slug/like', to: 'posts#like'
  post '/posts/:slug/unlike', to: 'posts#unlike'
end
