class Course < ActiveRecord::Base
  has_and_belongs_to_many :students
  
  belongs_to :instructor
  
  validates_presence_of :instructor_id, :term, :name, :number, :campus, :room
  
  
   
end