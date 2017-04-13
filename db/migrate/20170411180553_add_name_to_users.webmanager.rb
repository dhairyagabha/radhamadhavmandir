# This migration comes from webmanager (originally 20170305043715)
class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :webmanager_users, :first_name, :string
    add_column :webmanager_users, :last_name, :string
  end
end
