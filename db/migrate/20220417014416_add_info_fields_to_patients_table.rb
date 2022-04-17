class AddInfoFieldsToPatientsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :lastname, :string
    add_column :patients, :address, :string
    add_column :patients, :birthday, :date
    add_column :patients, :gender, :string
    add_column :patients, :country, :string
    add_column :patients, :occupation, :string
    add_column :patients, :email, :string
    add_column :patients, :phonenumber, :integer
    add_reference :patients, :user, index: true
  end
end
