# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  filter_parameter_logging :password, :encrypted_col_password

  before_filter :set_default_response_format, :key_check
  
  helper_method :current_api_user

  protected

    def set_default_response_format
      request.format = :xml if params[:format].nil? && !unlocked_controllers.include?(request.path_parameters[:controller])
      # special thanks
      # http://developingdeveloper.wordpress.com/2009/02/11/setting-the-default-request-format-for-a-rails-app/
    end

  private
    def unlocked_controllers
      ["error", "api_users", "test", "api_user_sessions"]
    end

    def key_check
      if !api_key_is_valid(params[:api_key]) && !unlocked_controllers.include?(request.path_parameters[:controller])
        redirect_to :controller => "error", :name => "invalid_key"
      end
    end
    
    def api_key_is_valid(key)
      @api_user = ApiUser.find_by_api_key(key)
    end
    
    def current_api_user_session
      return @current_api_user_session if defined?(@current_api_user_session)
      @current_api_user_session = ApiUserSession.find
    end

    def current_api_user
      return @current_api_user if defined?(@current_api_user)
      @current_api_user = current_api_user_session && current_api_user_session.record
    end
end
