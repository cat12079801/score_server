class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title, null: false
      t.text :question, null: false
      t.string :flag, null: false
      t.integer :user_id
      t.boolean :opened, default: false
      t.integer :point, null: false
      t.integer :genre_id, null: false

      t.timestamps null: false
    end
  end
end
