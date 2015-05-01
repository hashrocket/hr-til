class ResetDeveloperAdminFlag < ActiveRecord::Migration
  def change
    remove_column :developers, :admin, :boolean
    add_column    :developers, :admin, :boolean, null: false, default: false
  end
end
