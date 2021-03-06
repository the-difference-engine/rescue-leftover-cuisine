class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :profile_photo, :string
    add_column :users, :interests, :string

    add_column :users, :is_admin, :boolean, default: false
  end
end
