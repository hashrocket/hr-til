class PostsBelongToTags < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.belongs_to :tag, index: true
    end
  end
end
