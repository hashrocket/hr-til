class AddTweetedToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :tweeted, :boolean, default: false
  end
end
