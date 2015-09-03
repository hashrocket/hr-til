class LikesCountDefaultsToOne < ActiveRecord::Migration
  def up
    execute <<-SQL
      alter table posts alter column likes set default 1;
      update posts set likes = likes + 1;
    SQL
  end

  def down
    execute <<-SQL
      alter table posts alter column likes set default 0;
      update posts set likes = likes - 1;
    SQL
  end
end
