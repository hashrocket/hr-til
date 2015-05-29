class AddConstraintsToDevelopers < ActiveRecord::Migration
  def change
    change_column_null :developers, :created_at, false
    change_column_null :developers, :updated_at, false
  end
end
