class CreateSentFlags < ActiveRecord::Migration
  def change
    create_table :sent_flags do |t|
      t.string :flag, null: false
      t.integer :user_id, null: false
      t.integer :problem_id, null: false
      t.boolean :collect, null: false

      t.timestamps null: false
    end
  end
end
