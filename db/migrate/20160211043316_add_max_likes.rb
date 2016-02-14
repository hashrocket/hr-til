class AddMaxLikes < ActiveRecord::Migration
  def up
    execute <<-SQL
      alter table posts add column max_likes integer not null default 1;
      update posts set max_likes = likes;
    SQL
  end

  def down
    execute <<-SQL
      alter table posts drop column max_likes;
    SQL
  end
end
