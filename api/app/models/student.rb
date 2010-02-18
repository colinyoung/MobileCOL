class Student < ActiveRecord::Base
  has_and_belongs_to_many :courses
  
  attr_accessible :name, :col_password, :col_username
  
  attr_encrypted :col_password, :key => "modify upon release"
  
  validates_uniqueness_of :col_username 
  
  def self.find_by_col_username_and_filter(col_username)
    a = Student.find_by_col_username(col_username)
    a.encrypted_col_password = "[]"
    return a
  end
end