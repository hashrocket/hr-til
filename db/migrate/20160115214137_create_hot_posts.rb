class CreateHotPosts < ActiveRecord::Migration
  def change
    create_view :hot_posts
  end
end
