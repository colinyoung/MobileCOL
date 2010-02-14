class AddAuthlogicFieldsToApiUser < ActiveRecord::Migration
  def self.up
    add_column :api_users, :crypted_password, :string
    add_column :api_users, :password_salt, :string
    add_column :api_users, :persistence_token, :string        
  end

  def self.down
    remove_column :api_users, :crypted_password
    remove_column :api_users, :password_salt
    remove_column :api_users, :persistence_token    
  end
end
