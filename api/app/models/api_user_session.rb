class ApiUserSession < Authlogic::Session::Base
  validate :check_if_verified
  
  private
  
  def check_if_verified
    errors.add(:base, "Your account has not been verified.  
    Please check your spam folder at the email address 
    you used to register.") unless attempted_record && (attempted_record.active == true)
  end
end