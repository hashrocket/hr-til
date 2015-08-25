class AddPublishedToPost < ActiveRecord::Migration
  class Post < ActiveRecord::Base
  end

  def up
    add_column :posts, :published, :boolean, default: false, null: false

    Post.find_each { |p| p.update(published: true) }
  end

  def down
    remove_column :posts, :published
  end
end
