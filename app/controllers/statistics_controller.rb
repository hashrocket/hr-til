class StatisticsController < ApplicationController
  authem_for :developer
  helper_method :authors,
    :channels,
    :highest_count_last_30_days,
    :hot_posts,
    :posts,
    :posts_per_day,
    :top_ten

  private

  CountStat = Struct.new(:label, :count)

  def posts
    Post.published
  end

  def hot_posts
    hot_posts = ActiveRecord::Base.connection.execute('select id from hot_posts limit 10;')

    hot_posts.map do |hot_post|
      Post.find(hot_post['id'])
    end
  end

  def top_ten
    Post.published.includes(:channel).order(likes: :desc).take(10)
  end

  def authors
    @authors ||= Developer.joins(:posts)
      .merge(Post.published)
      .group(:username)
      .order('count_all desc')
      .count.map {|row| CountStat.new(row[0], row[1]) }
  end

  def channels
    @channels ||= Channel.joins(:posts)
      .merge(Post.published)
      .group(:name, :channel_id)
      .order('count_all desc')
      .count.map {|row| CountStat.new(row[0][0], row[1]) }
  end

  def highest_count_last_30_days
    posts_per_day.map(&:count).max + 1
  end

  def posts_per_day
    @posts_per_day ||= find_posts_per_day
  end

  def find_posts_per_day
    sql = <<-SQL
      with posts as (
           select date((published_at at time zone 'America/New_York')::timestamptz) as post_date
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

    posts = ActiveRecord::Base.connection.execute(sql)
    posts.values.map do |day|
      CountStat.new(day[0].to_date.strftime("%a, %b %-e"), day[1].to_i)
    end
  end
end
