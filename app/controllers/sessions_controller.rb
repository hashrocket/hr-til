class SessionsController < ApplicationController

  def create
    developer = Developer.find_by(email: session_params[:email].downcase)
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
end
