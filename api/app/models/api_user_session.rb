class ApiUserSession < Authlogic::Session::Base
  validate :check_if_perishable_token_exists
  
  private
  
  def check_if_perishable_token_exists
    errors.add(:base, "Your account has not been verified.  
    Please check your spam folder at the email address 
    you used to register.") unless attempted_record && attempted_record.perishable_token.length > 0
  end
end