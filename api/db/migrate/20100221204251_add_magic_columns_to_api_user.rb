class AddMagicColumnsToApiUser < ActiveRecord::Migration
  def self.up
    # optional, see Authlogic::Session::MagicColumns
    add_column :api_users, :login_count, :integer
    add_column :api_users, :failed_login_count, :integer
    add_column :api_users, :last_request_at, :datetime
    add_column :api_users, :current_login_at, :datetime
    add_column :api_users, :last_login_at, :datetime
    add_column :api_users, :current_login_ip, :string
    add_column :api_users, :last_login_ip,:string
  end

  def self.down
    remove_column :api_users, :login_count
    remove_column :api_users, :failed_login_count
    remove_column :api_users, :last_request_at
    remove_column :api_users, :current_login_at
    remove_column :api_users, :last_login_at
    remove_column :api_users, :current_login_ip
    remove_column :api_users, :last_login_ip
  end
end
