class TagsController < ApplicationController
  def show
    @tag = Tag.find_by_name! params[:name]
    @posts = @tag.posts.order created_at: :desc
  end
end
