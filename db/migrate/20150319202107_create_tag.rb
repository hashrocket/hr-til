class CreateTag < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.text :name, null: false

      t.timestamps
    end
  end
end
