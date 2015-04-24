class SessionsController < ApplicationController

  include DeveloperHelper

  def create
    email = oauth_info['email']
    if developer = Developer.find_by_email(email)
      sign_in developer
      flash[:notice] = 'Signed in'
      redirect_to root_path
    else
      developer = Developer.create(oauth_developer_params)
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

  private

  def oauth_developer_params
    {
      username: generate_username(oauth_info['name']),
      email: oauth_info['email']
    }
  end

  def oauth_info
    request.env['omniauth.auth']['info']
  end
end
