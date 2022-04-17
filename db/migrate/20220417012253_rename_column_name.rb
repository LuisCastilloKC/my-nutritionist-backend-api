class RenameColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :patients, :name, :firstname
  end
end
