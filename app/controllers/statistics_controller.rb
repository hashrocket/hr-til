class StatisticsController < ApplicationController
  def tag_posts_counts
    render json: Tag.all.map{|tag| [tag.name, tag.posts.count]}.to_h
  end
end
