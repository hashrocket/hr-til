class RenameTagsToChannels < ActiveRecord::Migration
  def change
    rename_table :tags, :channels

    change_table :posts do |t|
      t.remove_references :tag
      t.belongs_to :channel, index: true
    end
  end
end
