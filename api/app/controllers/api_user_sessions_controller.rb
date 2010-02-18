class ApiUserSessionsController < ApplicationController
  def create
    @api_user_session = ApiUserSession.new(params[:api_user_session])
    if @api_user_session.save
      flash[:notice] = "Successfully logged in."
      redirect_to current_api_user
    else
      render :action => 'new'
    end
  end
  
  def new
    @api_user_session = ApiUserSession.new
  end

  def destroy
    @api_user_session = ApiUserSession.find
    @api_user_session.destroy
    flash[:notice] = "Successfully logged out."
    redirect_to api_users_path
  end
end