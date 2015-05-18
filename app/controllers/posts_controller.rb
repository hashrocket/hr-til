class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]
  before_action :require_developer, except: [:index, :show]
  before_action :authorize_developer, only: [:edit, :update]

  def preview
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
      flash.now[:alert] = @post.errors.full_messages
      render :new
    end
  end

  def index
    @posts = Post.order(created_at: :desc).includes(:developer, :tag)
  end

  def show
    if valid_url?
      respond_to do |format|
        format.md { render text: @post.body }
        format.html
      end
    else
      redirect_to_valid_slug
    end
  end

  def edit
    redirect_to edit_post_path @post unless valid_url?
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post updated'
    else
      flash.now[:alert] = @post.errors.full_messages
      render :edit
    end
  end

  def sorted_tags
    Tag.order name: :asc
  end
  helper_method :sorted_tags

  private

  def redirect_to_valid_slug
    respond_to do |format|
      format.md { redirect_to post_text_path(@post) }
      format.html { redirect_to @post }
    end
  end

  def post_params
    params.require(:post).permit :body, :tag_id, :developer_id, :title, :slug
  end

  def untitled_slug
    params[:titled_slug].split('-').first
  end

  def set_post
    @post = Post.find_by_slug!(untitled_slug)
  end

  def authorize_developer
    unless editable?(@post)
      redirect_to root_path, alert: 'You can only edit your own posts'
    end
  end

  def valid_url?
    @post.to_param == params[:titled_slug]
  end
end
