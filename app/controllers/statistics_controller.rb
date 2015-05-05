class StatisticsController < ApplicationController
  before_filter :require_admin

  def tag_posts_counts
    render json: Tag.all.map { |tag| [tag.name, tag.posts.count] }.to_h
  end

  def author_posts_counts
    render json: Developer.all.map { |developer| [developer.username, developer.posts.count] }.to_h
  end
end
