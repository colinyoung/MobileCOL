class Instructor < ActiveRecord::Base
  has_many :courses
  
  validates_presence_of :name, :email
end
