class StatisticsController < ApplicationController
  helper_method :top_ten, :authors, :channels, :highest_count_last_30_days, :posts_per_day

  private

  def top_ten
    Post.published.includes(:channel).order(likes: :desc).take(10)
  end

  def authors
    Developer.joins(:posts)
      .merge(Post.published)
      .uniq
      .sort_by(&:posts_count)
      .reverse
  end

  def channels
    Channel.joins(:posts)
      .merge(Post.published)
      .uniq
      .sort_by(&:posts_count)
      .reverse
  end

  def highest_count_last_30_days
    posts_per_day.map(&:count).max + 1
  end

  DayStat = Struct.new(:date, :count)
  def posts_per_day
    sql = <<-SQL
      with posts as (
           select date((created_at at time zone 'UTC' at time zone 'America/New_York')::timestamptz) as post_date
              from posts
              where published_at is not null
      )
      select dates_table.date, count(posts.post_date) from (
           select (generate_series(now()::date - '29 day'::interval, now()::date, '1 day'::interval))::date as date
      ) as dates_table
      left outer join posts
      on posts.post_date=dates_table.date
      group by dates_table.date
      order by dates_table.date;
    SQL

    ppd = []
    posts = ActiveRecord::Base.connection.execute(sql)
    posts.values.each do |day|
      ppd << DayStat.new(day[0].to_date.strftime("%a, %b %e"), day[1].to_i)
    end
    ppd
  end
end
