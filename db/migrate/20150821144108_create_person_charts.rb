class CreatePersonCharts < ActiveRecord::Migration
  def change
    create_table :person_charts do |t|
      t.integer :point, null: false
      t.integer :user_id, null: false
      t.integer :times, null: false

      t.timestamps null: false
    end
  end
end
