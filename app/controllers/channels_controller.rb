class ChannelsController < ApplicationController
  def show
    @channel = Channel.find_by_name!(params[:id])
    @posts = @channel.posts.published_and_ordered.includes(:developer)
  end
end
