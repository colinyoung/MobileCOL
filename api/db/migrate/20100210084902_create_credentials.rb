class CreateCredentials < ActiveRecord::Migration
  def self.up
    create_table :credentials do |t|
      t.integer :student_id
      t.string :col_username
      t.string :col_password

      t.timestamps
    end
  end

  def self.down
    drop_table :credentials
  end
end
