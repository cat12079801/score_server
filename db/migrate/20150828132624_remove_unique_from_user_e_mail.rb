class RemoveUniqueFromUserEMail < ActiveRecord::Migration
  def change
    remove_column :users, :email, :string
    add_column :users, :email, :string
    #change_column :users, :email, :string, :unique => false
  end
end
