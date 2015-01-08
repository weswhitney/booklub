class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    remove_column :users, :first_name
    remove_column :users, :last_name
  end
end
