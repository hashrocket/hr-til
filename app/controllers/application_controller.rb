class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  authem_for :developer

  private

  def require_developer
    unless current_developer
      redirect_to root_path, alert: "Access denied"
    end
  end
end
