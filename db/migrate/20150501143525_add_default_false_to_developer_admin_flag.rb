class AddDefaultFalseToDeveloperAdminFlag < ActiveRecord::Migration
  def change
    change_column_default :developers, :admin, false
  end
end
