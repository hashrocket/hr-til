class SessionsController < ApplicationController

  def create
    oauth_info = OAuthInfo.new(request.env['omniauth.auth'])
    developer = Developer.find_or_create_by(email: oauth_info.email) do |new_developer|
      new_developer.username = oauth_info.username
    end
    sign_in developer
    flash[:notice] = 'Signed in'
    redirect_to root_path
  end

  def destroy
    sign_out_developer
    flash[:notice] = 'Signed out'
    redirect_to root_path
  end
end
