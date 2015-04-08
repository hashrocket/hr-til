class SessionsController < ApplicationController

  include DeveloperHelper

  def create
    email = request.env['omniauth.auth']['info']['email']
    if developer = Developer.find_by(email: email)
      sign_in developer
      redirect_to root_path
    else
      developer = Developer.create(oauth_developer_params)
      sign_in developer
      redirect_to root_path
    end
  end

  def destroy
    sign_out_developer
    redirect_to root_path
  end

  private

  def oauth_developer_params
    {
      username: generate_username(request.env['omniauth.auth']['info']['name']),
      email: request.env['omniauth.auth']['info']['email'],
    }
  end
end
