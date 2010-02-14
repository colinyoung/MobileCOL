class Error < ActiveRecord::Base
  
  def self.find_by_name(name)
    ## Hash of error messages
    messages = {  
      "invalid_key" => "Invalid API Key.",
      "invalid_user" => "Invalid User."
    }
    return messages[name] unless !messages[name]
    "Application Error"
  end
end