class DevelopersController < ApplicationController

  def show
    @developer = Developer.find_by_username!(params[:username]).decorate
    @post_days = @developer.posts(created_at: :desc).includes(:tag).group_by { |p| p.created_at.beginning_of_day }
  end

  def profile
    @developer = current_developer
  end

  def update
    @developer = Developer.find(params[:id])
    if @developer.update(developer_params)
      flash[:notice] = 'Developer updated'
      redirect_to root_path
    else
      flash.now[:error] = @developer.errors.full_messages
      render :profile
    end
  end

  private

  def developer_params
    params.require(:developer).permit :email, :username, :twitter_handle
  end
end
