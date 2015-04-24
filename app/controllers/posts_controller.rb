class PostsController < ApplicationController

  include MarkdownHelper
  include PostHelper

  before_filter :require_developer, except: [:index, :show]

  def preview
    render layout: false
  end

  def word_count
    render layout: false
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.developer = current_developer
    if @post.save
      flash[:notice] = 'Post created'
      redirect_to root_path
    else
      flash.now[:error] = @post.errors.full_messages
      render :new
    end
  end

  def index
    @post_days = Post.order(created_at: :desc).includes(:developer, :tag).group_by { |p| p.created_at.beginning_of_day }
  end

  def show
    @post = Post.find_by_slug(params[:slug])
    @post_days = { @post.created_at.beginning_of_day => [ @post ] }
  end

  def edit
    @post = Post.find_by_slug(params[:slug])
    unless @post.developer == current_developer
      flash[:error] = 'Access denied'
      redirect_to root_path
    end
  end

  def update
    @post = Post.find_by_slug(params[:slug])
    if @post.update(post_params)
      flash[:notice] = 'Post updated'
      redirect_to @post
    else
      flash.now[:error] = @post.errors.full_messages
      render :edit
    end
  end

  def sorted_tags
    Tag.order name: :asc
  end
  helper_method :sorted_tags

  private

  def post_params
    params.require(:post).permit :body, :tag_id, :developer_id, :title, :slug
  end
end
