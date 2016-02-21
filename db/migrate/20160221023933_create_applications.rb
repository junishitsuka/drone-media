class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :pref
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
