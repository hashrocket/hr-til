class ChannelsController < ApplicationController
  helper_method :channel, :posts

  private

  def channel
    @channel ||= Channel.find_by_name!(params[:id])
  end

  def posts
    @posts ||= channel.posts.published_and_ordered.includes(:developer).page(params[:page]).per(PAGINATE_LIMIT)
  end
end
