class AddCheckConstraintToTwitterHashtag < ActiveRecord::Migration
  def up
    execute <<-SQL
      alter table channels add constraint twitter_hashtag_alphanumeric_constraint check (twitter_hashtag ~ '^[\\w\\d]+$');
    SQL
  end

  def down
    execute <<-SQL
      alter table channels drop constraint twitter_hashtag_alphanumeric_constraint;
    SQL
  end
end
