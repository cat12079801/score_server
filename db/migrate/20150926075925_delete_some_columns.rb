class DeleteSomeColumns < ActiveRecord::Migration
  def change
    remove_column :problems, :user_id
    remove_column :users, :team_id
    rename_column :users, :account, :screen_name
  end
end
