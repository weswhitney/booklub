class AddStatusToBooklubUsers < ActiveRecord::Migration
  def change
    add_column :bookclub_users, :status, :string
  end
end
