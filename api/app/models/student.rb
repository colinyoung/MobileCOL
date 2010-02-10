class Student < ActiveRecord::Base
  has_and_belongs_to_many :courses 
  has_one :credential
  # a lot of help came from:
  # http://adtmag.com/Articles/2008/09/29/Mikes-Rails-Zone-Handling-ManytoMany-Relationships-in-Rails.aspx

  # ironically, the tutorial's situation was exactly applicable!
end
