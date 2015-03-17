class SessionsController < ApplicationController
  expose(:developer)

  def create
    developer = Developer.find_by(email: params[:session][:email].downcase)
    if developer && developer.authenticate(params[:session][:password])
      sign_in developer
      redirect_to root_path
    else
      flash.now.alert = "Your email and password do not match"
      render :new
    end
  end

  def destroy
    sign_out_developer
    redirect_to root_path
  end
end
