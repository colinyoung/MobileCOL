class AddPerishableTokenToApiUser < ActiveRecord::Migration
  def self.up
    add_column :api_users, :perishable_token, :string
  end

  def self.down
    remove_column :api_users, :perishable_token
  end
end
