class PostsController < ApplicationController

  include MarkdownHelper
  include PostHelper

  before_filter :require_developer, except: [:index, :show]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.developer = current_developer
    if @post.save
      redirect_to root_path
    else
      flash[:alert] = @post.errors.full_messages
      render :new
    end
  end

  def index
    @post_days = Post.order(created_at: :desc).includes(:developer, :tag).group_by { |p| p.created_at.beginning_of_day }
  end

  def show
    @post = Post.find(params[:id])
    @post_days = { @post.created_at.beginning_of_day => [ @post ] }
  end

  def edit
    @post = Post.find(params[:id])
    unless @post.developer == current_developer
      redirect_to root_path, alert: "Access denied"
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update!(post_params)
      redirect_to @post, notice: 'Post updated'
    else
      render :edit
    end
  end

  def sorted_tags
    Tag.order name: :asc
  end
  helper_method :sorted_tags

  private

  def post_params
    params.require(:post).permit :body, :tag_id, :developer_id, :title
  end
end
