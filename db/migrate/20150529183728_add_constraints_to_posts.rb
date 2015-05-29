class AddConstraintsToPosts < ActiveRecord::Migration
  def change
    change_column_null :posts, :created_at, false
    change_column_null :posts, :updated_at, false
    change_column_null :posts, :tag_id, false
    change_column_null :posts, :title, false
    change_column_null :posts, :slug, false
  end
end
