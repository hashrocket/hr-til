class RenameTagsToChannels < ActiveRecord::Migration
  def change
    rename_table :tags, :channels

    change_table :posts do |t|
      t.rename :tag_id, :channel_id
      add_foreign_key :posts, :channels
    end
  end
end
