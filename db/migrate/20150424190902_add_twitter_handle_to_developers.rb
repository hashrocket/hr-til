class AddTwitterHandleToDevelopers < ActiveRecord::Migration
  def change
    add_column :developers, :twitter_handle, :string
  end
end
