class CreateTeamCharts < ActiveRecord::Migration
  def change
    create_table :team_charts do |t|
      t.integer :point, null: false
      t.integer :team_id, null: false
      t.integer :times, null: false

      t.timestamps null: false
    end
  end
end
