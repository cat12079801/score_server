class CreateTeamSolves < ActiveRecord::Migration
  def change
    create_table :team_solves do |t|
      t.integer :team_id
      t.integer :problem_id

      t.timestamps null: false
    end
  end
end
