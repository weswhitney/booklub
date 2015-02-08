class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :discussion
      t.belongs_to :bookclub_user
      t.belongs_to :assigned_book
      t.timestamps
    end
  end
end
