class AddPublishedAtToPosts < ActiveRecord::Migration
  def up
    execute <<-SQL
      alter table posts add column published_at timestamptz;
      update posts set published_at = created_at where published;
      alter table posts drop column published;
    SQL
  end

  def down
    execute <<-SQL
      alter table posts add column published boolean default false not null;
      update posts set published = true where published_at is not null;
      alter table posts drop column published_at;
    SQL
  end
end
