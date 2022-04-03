class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.date :dateofbirth
      t.string :address
      t.string :phonenumber
      t.string :note

      t.timestamps
    end
  end
end
