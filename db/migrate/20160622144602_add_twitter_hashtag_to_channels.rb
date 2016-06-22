class AddTwitterHashtagToChannels < ActiveRecord::Migration
  def up
    execute <<-SQL
      alter table channels
      add column twitter_hashtag varchar(20);

      update channels set twitter_hashtag = replace(name, '-', '');

      alter table channels
      alter column twitter_hashtag set not null;
    SQL
  end

  def down
    execute <<-SQL
      alter table channels drop column twitter_hashtag;
    SQL
  end
end
