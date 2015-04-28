class SessionsController < ApplicationController

  def create
    oauth_info = OAuthInfo.new(request.env['omniauth.auth'])
    if developer = Developer.find_by_email(oauth_info.email)
      sign_in developer
      flash[:notice] = 'Signed in'
      redirect_to root_path
    else
      developer = Developer.create(username: oauth_info.username, email: oauth_info.email)
      sign_in developer
      flash[:notice] = 'Signed in'
      redirect_to root_path
    end
  end

  def destroy
    sign_out_developer
    flash[:notice] = 'Signed out'
    redirect_to root_path
  end
end
