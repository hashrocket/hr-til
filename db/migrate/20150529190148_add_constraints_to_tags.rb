class AddConstraintsToTags < ActiveRecord::Migration
  def change
    change_column_null :tags, :created_at, false
    change_column_null :tags, :updated_at, false
  end
end
