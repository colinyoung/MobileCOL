class CreateApiUsers < ActiveRecord::Migration
  def self.up
    create_table :api_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :level
      t.boolean :active
      t.text :api_key

      t.timestamps
    end
  end

  def self.down
    drop_table :api_users
  end
end
