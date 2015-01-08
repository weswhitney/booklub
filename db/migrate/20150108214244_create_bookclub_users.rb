class CreateBookclubUsers < ActiveRecord::Migration
  def change
    create_table :bookclub_users do |t|
      t.belongs_to :user
      t.belongs_to :bookclub
    end
  end
end
