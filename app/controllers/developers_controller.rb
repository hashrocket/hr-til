class DevelopersController < ApplicationController
  before_action :set_developer, only: [:show, :edit, :update]

  def show
    @posts = @developer.posts.published_and_ordered.includes(:channel)
  end

  def update
    if @developer.update(developer_params)
      redirect_to root_path, notice: 'Developer updated'
    else
      render :edit
    end
  end

  private

  def set_developer
    @developer = if params[:action] == "show"
                   Developer.find_by_username!(params[:id])
                 else
                   current_developer
                 end
  end

  def developer_params
    params.require(:developer).permit :email, :username, :twitter_handle
  end
end
