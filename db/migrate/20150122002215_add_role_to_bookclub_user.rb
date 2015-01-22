class AddRoleToBookclubUser < ActiveRecord::Migration
  def change
    add_column :bookclub_users, :role, :string
  end
end
