class CreateApplicationPurposes < ActiveRecord::Migration
  def change
    create_table :application_purposes do |t|
      t.integer :application_id
      t.string :purpose

      t.timestamps null: false
    end
  end
end
