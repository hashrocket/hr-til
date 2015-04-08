class SessionsController < ApplicationController

  def create_oauth
    email = request.env['omniauth.auth']['info']['email']
    if developer = Developer.find_by(email: email)
      sign_in developer
      redirect_to root_path
    else
      developer = Developer.create(oauth_user_params)
      sign_in developer
      redirect_to root_path
    end
  end

  def create_authem
    developer = Developer.find_by(email: session_params[:email])
    if developer && developer.authenticate(session_params[:password])
      sign_in developer
      redirect_to root_path
    else
      flash.now.alert = "Signin failed"
      render :new
    end
  end

  def destroy
    sign_out_developer
    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

  def oauth_user_params
    {
      username: request.env['omniauth.auth']['info']['name'].delete(' ').downcase,
      email: request.env['omniauth.auth']['info']['email'],
      password: 'password',
      password_confirmation: 'password'
    }
  end
end
