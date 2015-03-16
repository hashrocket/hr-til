class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :email,                null: false
      t.string :password_digest,      null: false
      t.string :password_reset_token, null: false, limit: 60
      t.string :username,             null: false

      t.timestamps
    end
  end
end
