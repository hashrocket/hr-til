class StatisticsController < ApplicationController
  before_filter :require_developer

  def channel_posts_counts
    render json: Channel.all.map { |channel| [channel.name, channel.posts.count] }.to_h
  end

  def author_posts_counts
    render json: Developer.joins(:posts).map { |developer| [developer.username, developer.posts.count] }.to_h
  end

  def post_days_counts
    posts = Post.where('cast(posts.created_at as date) between ? and ?', start_date, end_date)
    posts_by_date = posts.group_by { |post| post.created_at.to_date }
    @posts_by_day = (start_date..end_date).each_with_object({}) do |date, hash|
      hash[date] = posts_by_date[date] ? posts_by_date[date].count : 0
    end
    render json: @posts_by_day
  end

  def chart_range
    (end_date - start_date).to_i
  end
  helper_method :chart_range

  private

  def start_date
    Date.today - 30.days
  end

  def end_date
    Date.today
  end
end
