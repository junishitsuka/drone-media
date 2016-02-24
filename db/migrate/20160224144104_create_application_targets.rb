class CreateApplicationTargets < ActiveRecord::Migration
  def change
    create_table :application_targets do |t|
      t.integer :application_id
      t.integer :target_id

      t.timestamps null: false
    end
  end
end
