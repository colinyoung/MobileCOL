class Student < ActiveRecord::Base
  has_and_belongs_to_many :courses
  
  attr_accessible :name, :col_password, :col_username
  
  attr_encrypted :col_username, :key => "modify upon release"
  
  validates_uniqueness_of :col_username
end
