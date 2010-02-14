class AddEncryptedColPasswordToStudent < ActiveRecord::Migration
  def self.up
    add_column :students, :encrypted_col_password, :string
  end

  def self.down
    remove_column :students, :encrypted_col_password
  end
end
