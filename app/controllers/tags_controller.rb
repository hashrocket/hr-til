class TagsController < ApplicationController

  def show
    @tag = Tag.find_by_name(params[:name]).decorate
    posts = @tag.posts.order created_at: :desc
    @post_days = posts.group_by { |p| p.created_at.beginning_of_day }
  end
end
