class RemovePasswordSaltFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :password_salt, :string
    rename_column :users, :password_hash, :password_digest
    add_column :users, :admin , :boolean, default: false 
  end
end
