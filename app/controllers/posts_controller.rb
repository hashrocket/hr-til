class PostsController < ApplicationController
  expose(:developer) { current_developer }
  expose(:post, attributes: :post_params)
  expose(:posts) { developer.posts }

  def create
    if post.save
      redirect_to root_path
    else
      flash.now.alert = "TIL Creation failed"
      render :new
    end
  end

  def index
    self.posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit :body
  end
end
