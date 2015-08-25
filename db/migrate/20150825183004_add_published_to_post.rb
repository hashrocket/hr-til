class AddPublishedToPost < ActiveRecord::Migration
  class Post < ActiveRecord::Base
  end

  def up
    add_column :posts, :published, :boolean, default: false, null: false

    add_index :posts, [:published, :developer_id], where: 'published = false', unique: true

    Post.find_each { |p| p.update(published: true) }
  end

  def down
    remove_column :posts, :published
  end
end
