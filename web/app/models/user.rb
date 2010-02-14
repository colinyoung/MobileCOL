class User < ActiveRecord::Base
  acts_as_authentic # hooks up to authlogic gem
  
end
