class StudentsController < ApplicationController
  def index
    @student = Student.find_by_col_username_and_filter(params[:student][:col_username])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student }
    end
  end
  
  def create
    @student = Student.new(params[:student])
    respond_to do |format|
      if @student.save
        flash[:notice] = 'Course was successfully created.'
        format.html { redirect_to(@student) }
        format.xml  { render :xml => @student, :status => :created }
      else
        format.html { render :action => "create" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  def edit
    
  end
end