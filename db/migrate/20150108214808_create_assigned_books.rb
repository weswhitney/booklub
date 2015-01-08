class CreateAssignedBooks < ActiveRecord::Migration
  def change
    create_table :assigned_books do |t|
      t.belongs_to :book
      t.belongs_to :bookclub
    end
  end
end
