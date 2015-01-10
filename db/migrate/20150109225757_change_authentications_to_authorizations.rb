class ChangeAuthenticationsToAuthorizations < ActiveRecord::Migration
  def change
    rename_table :authentications, :authorizations
  end
end
