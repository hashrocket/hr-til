class NullifyEmptySlackNames < ActiveRecord::Migration
  def up
    execute <<-SQL
      update developers set slack_name = null where slack_name = '';
    SQL
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
