class AddEditorToDeveloper < ActiveRecord::Migration
  def change
    add_column :developers, :editor, :string, default: 'Text Field'
  end
end
