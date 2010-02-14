class ErrorController < ApplicationController
  def index
    render :text => Error.find_by_name(params[:name])
  end
end
