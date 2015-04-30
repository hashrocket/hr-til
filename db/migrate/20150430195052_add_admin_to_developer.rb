class AddAdminToDeveloper < ActiveRecord::Migration
  def change
    add_column :developers, :admin, :boolean
  end
end
