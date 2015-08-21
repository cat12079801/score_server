class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :problem_id, null: false
      t.string :title, null: false
      t.text :description, null: false

      t.timestamps null: false
    end
  end
end
