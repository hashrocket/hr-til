class ChangeHashtagForGoAndElixir < ActiveRecord::Migration
  def up
    execute <<-SQL
    update channels set twitter_hashtag = 'golang' where name = 'go';
    update channels set twitter_hashtag = 'myelixirstatus' where name = 'elixir';
    SQL
  end

  def down
    execute <<-SQL
    update channels set twitter_hashtag = 'go' where name = 'go';
    update channels set twitter_hashtag = 'elixir' where name = 'elixir';
    SQL
  end
end
