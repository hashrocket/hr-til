class CreateAuthemSessions < ActiveRecord::Migration
  def change
    create_table :authem_sessions do |t|
      t.string     :role,       null: false
      t.references :subject,    null: false, polymorphic: true
      t.string     :token,      null: false, limit: 60
      t.datetime   :expires_at, null: false
      t.integer    :ttl,        null: false
      t.timestamps
    end

    add_index :authem_sessions, %w[expires_at token], unique: true
    add_index :authem_sessions, %w[expires_at subject_type subject_id], name: 'index_authem_sessions_subject'
  end
end
