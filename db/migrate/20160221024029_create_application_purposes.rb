class CreateApplicationPurposes < ActiveRecord::Migration
  def change
    create_table :application_purposes do |t|
      t.integer :application_id
      t.integer :purpose_id

      t.timestamps null: false
    end
  end
end
