class ApiUser < ActiveRecord::Base
  acts_as_authentic # => authlogic functions
  
  # TODO
  #  - config option to allow any email on create  
  #
  #  - race conditions with validates_uniqueness_of
  
  # validate depaul-only email on create
  validates_format_of :email, :with => /\A([^@\s]+)@((?:students\.|mail\.|)+(?:depaul+\.)+edu)\Z/i, 
    :on => :create, 
    :message => "is not a valid DePaul email address.  
    You must use either an @depaul.edu, @students.depaul.edu, or 
    @mail.depaul.edu address to register."
  
  # validate any kind of email on update
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :update
  
  validates_uniqueness_of :email, :message => "has already been taken."
end