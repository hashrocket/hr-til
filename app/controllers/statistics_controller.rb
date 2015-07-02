class StatisticsController < ApplicationController
  def index
    @authors = Developer.joins(:posts).uniq.sort_by { |p| p.post_count }.reverse
    @channels = Channel.joins(:posts).uniq.sort_by { |c| c.posts_count }.reverse
    @top_ten = Post.order(likes: :desc).take(10)

    posts = Post.where('cast(posts.created_at as date) between ? and ?', start_date, end_date).group('date(created_at)').count
    @posts_per_day = (start_date..end_date).each_with_object({}) do |date, hash|
      hash[date] = posts[date] ? posts[date] : 0
    end
  end

  private

  helper_method def highest_count_last_30_days
    @posts_per_day.values.max + 1
  end

  def start_date
    Date.today - 29.days
  end

  def end_date
    Date.today
  end
end
