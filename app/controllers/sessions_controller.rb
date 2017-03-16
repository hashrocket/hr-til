class SessionsController < ApplicationController
  authem_for :developer

  def create
    begin
      oauth_info = OAuthInfo.new(request.env['omniauth.auth'])
      developer = Developer.find_or_create_by!(email: oauth_info.email) do |new_developer|
        new_developer.username = oauth_info.username
      end
      sign_in developer
      redirect_to root_path, notice: 'Signed in'
    rescue ActiveRecord::RecordInvalid => e
      redirect_to root_path, notice: e.message
    end
  end

  def destroy
    sign_out_developer
    redirect_to root_path, notice: 'Signed out'
  end
end
