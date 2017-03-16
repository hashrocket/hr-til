class AddAdToChannels < ActiveRecord::Migration[5.0]
  def change
    add_column :channels, :ad, :text
  end
end
