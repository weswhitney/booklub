class CreateBookclub < ActiveRecord::Migration
  def change
    create_table :bookclubs do |t|
      t.string :name
    end
  end
end
