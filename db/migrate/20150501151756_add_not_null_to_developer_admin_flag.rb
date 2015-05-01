class AddNotNullToDeveloperAdminFlag < ActiveRecord::Migration
  def change
    change_column_null :developers, :admin, false
  end
end
