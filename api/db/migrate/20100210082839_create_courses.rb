class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.integer :instructor_id
      t.string :term
      t.string :name
      t.string :number
      t.string :time
      t.string :campus
      t.string :room
      t.text :homepage

      t.timestamps
    end
    
    create_table :courses_students, :id => false do |t|
          t.integer :course_id
          t.integer :student_id
    end    
  end

  def self.down
    drop_table :courses
    drop_table :courses_students
  end
end
