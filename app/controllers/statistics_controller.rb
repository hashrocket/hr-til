class StatisticsController < ApplicationController
  def index
    @authors = Developer.joins(:posts).uniq.sort_by(&:posts_count).reverse
    @channels = Channel.joins(:posts).uniq.sort_by(&:posts_count).reverse
    @top_ten = Post.order(likes: :desc).take(10)

    sql = <<-SQL
      select count(*),
      date((created_at at time zone 'UTC' at time zone 'America/New_York')::timestamptz) as creation_date
      from posts
      where (created_at at time zone 'UTC' at time zone 'America/New_York') between (now() - make_interval(days:=30))
        and now() group by creation_date;
      SQL

    posts = ActiveRecord::Base.connection.execute(sql)
    posts_per_day = {}

    posts.each { |p| posts_per_day[p['creation_date'].to_date] = p['count'].to_i }
    @posts_per_day = posts_per_day.sort
  end

  private

  helper_method def highest_count_last_30_days
    @posts_per_day.map { |_, v| v }.max + 1
  end
end
