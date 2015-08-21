class AddAccountAndAdminFlagToUsers < ActiveRecord::Migration
  def change
    add_column :users, :account, :string, null: false
    add_column :users, :admin_flag, :boolean, default: false
    add_index  :users, :account, unique: true
  end
end
