class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    remove_column :users, :password_digest
    remove_column :users, :name
  end
end
