class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_cache_header

  if credentials = ENV['basic_auth_credentials']
    username, password = credentials.split(':', 2)
    http_basic_authenticate_with name: username, password: password
  end

  helper_method :editable?

  private

  def editable?(post)
    current_developer && (current_developer == post.developer || current_developer.admin?)
  end

  def require_developer
    redirect_to root_path unless current_developer
  end

  def set_cache_header
    headers['Cache-Control'] = 'no-cache, no-store'
  end
end
