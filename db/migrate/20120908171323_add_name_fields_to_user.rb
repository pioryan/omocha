class AddNameFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string, :limit => 35
    add_column :users, :middlename, :string, :limit => 35
    add_column :users, :lastname, :string, :limit => 35
  end
end
