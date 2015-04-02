class ChangeDiscussions < ActiveRecord::Migration
  def change
    rename_column :discussions, :bookclub_user_id, :user_id
  end
end
