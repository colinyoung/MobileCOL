class ApiUser < ActiveRecord::Base
  # TODO
  #  - config option to allow any email on create  
  #
  #  - race conditions with validates_uniqueness_of
    
  acts_as_authentic do |config| # => authlogic functions
    
    config.maintain_sessions = false # disables auto-login after registration
    
  end  
  # validate depaul-only email on create
  validates_format_of :email, :with => /\A([^@\s]+)@((?:students\.|mail\.|)+(?:depaul+\.)+edu)\Z/i, 
    :on => :create, 
    :message => "is not a valid DePaul email address.  
    You must use either an @depaul.edu, @students.depaul.edu, or 
    @mail.depaul.edu address to register."
  
  # validate any kind of email on update
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :update
  
  validates_uniqueness_of :email, :message => "has already been taken."
  
  validates_presence_of :first_name, :last_name, :email
  
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name
  
  def active?
    if self.perishable_token.length > 0
      return false
    else
      return true
    end
  end  
  
end