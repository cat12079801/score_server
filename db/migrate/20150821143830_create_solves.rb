class CreateSolves < ActiveRecord::Migration
  def change
    create_table :solves do |t|
      t.integer :user_id, null: false
      t.integer :problem_id, null: false

      t.timestamps null: false
    end
  end
end
