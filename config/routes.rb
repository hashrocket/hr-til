Rails.application.routes.draw do
  root to: 'posts#index'

  get 'account/signup' => 'developers#new'
  post 'account/signup' => 'developers#create'
end
