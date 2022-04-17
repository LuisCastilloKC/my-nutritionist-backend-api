class RenameColumnNameFromUsernameToFirstName < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :username, :firstname
  end
end
