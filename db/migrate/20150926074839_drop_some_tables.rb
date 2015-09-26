class DropSomeTables < ActiveRecord::Migration
  def change
    drop_table :notifications
    drop_table :teams
    drop_table :team_charts
    drop_table :team_solves
    drop_table :person_charts
  end
end
