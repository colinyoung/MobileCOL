class AddActiveToApiUser < ActiveRecord::Migration
  def self.up
    add_column :api_users, :active, :boolean
  end

  def self.down
    remove_column :api_users, :active
  end
end
