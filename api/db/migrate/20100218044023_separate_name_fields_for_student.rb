class SeparateNameFieldsForStudent < ActiveRecord::Migration
  def self.up
    remove_column :students, :name
    
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string    
  end

  def self.down
    add_column :students, :name, :string
    
    remove_column :students, :first_name
    remove_column :students, :last_name
  end
end
