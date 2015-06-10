class AddForeignKeyConstraintForDevelopers < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      add_foreign_key :posts, :developers
    end
  end
end
