class AddMoreColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :lastname, :string
    add_column :users, :email, :string
  end
end
