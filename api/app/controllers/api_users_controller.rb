class ApiUsersController < ApplicationController
  def index
  end

  def new
    @api_user = ApiUser.new
  end

  def create
  @api_user = ApiUser.new(params[:api_user])
    if @api_user.save
      flash[:notice] = "Successfully created account. Please check your email for a verification link."
      redirect_to :login
    else
      render :action => 'new'
    end
  end

  def show
  end

  def edit
  end

end
