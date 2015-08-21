class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.text :solved_problem
      t.integer :point, default: 0

      t.timestamps null: false
    end
  end
end
