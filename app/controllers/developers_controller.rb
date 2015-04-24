class DevelopersController < ApplicationController

  def show
    @developer = Developer.find_by_username(params[:username]).decorate
    @post_days = @developer.posts(created_at: :desc).includes(:tag).group_by { |p| p.created_at.beginning_of_day }
  end

  private

  def developer_params
    params.require(:developer).permit :password, :password_confirmation, :email, :username
  end
end
