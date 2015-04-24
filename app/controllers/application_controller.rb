class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  authem_for :developer

  private

  def require_developer
    unless current_developer
      flash[:error] = 'Access denied'
      redirect_to root_path
    end
  end
end
