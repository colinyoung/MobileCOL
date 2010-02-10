class CreateInstructors < ActiveRecord::Migration
  def self.up
    create_table :instructors do |t|
      t.string :name
      t.string :office
      t.string :phone
      t.string :email
      t.text :office_hours
      t.text :advising_hours
      t.text :homepage

      t.timestamps
    end
  end

  def self.down
    drop_table :instructors
  end
end
