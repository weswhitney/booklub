class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :role, null: false
      t.belongs_to :user, null: false
      t.belongs_to :book, null: false
    end
  end
end
