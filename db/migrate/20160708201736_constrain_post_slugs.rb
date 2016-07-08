class ConstrainPostSlugs < ActiveRecord::Migration
  def up
    execute 'alter table posts add constraint unique_slug unique(slug);'
  end

  def down
    execute 'alter table posts drop constraint unique_slug;'
  end
end
