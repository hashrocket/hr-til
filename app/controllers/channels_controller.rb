class ChannelsController < ApplicationController
  helper_method :channel, :posts

  private

  def channel
    @channel ||= Channel.find_by_name!(params[:id])
  end

  def posts
    @posts ||= channel
      .posts
      .includes(:channel, :developer)
      .published_and_ordered
      .page(params[:page])
      .per(ENV.fetch('pagination_breakpoint'))
  end
end
