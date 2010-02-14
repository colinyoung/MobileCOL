class AddColUsernameToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :col_username, :string
  end

  def self.down
    remove_column :students, :col_username
  end
end
