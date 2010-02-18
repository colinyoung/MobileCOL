class COL
  def init(col_username)
   @student = Student.new({
      :col_username => params[:student_id]
    })
    if @student.save
      return true
    end
    return false
  end
  
  def get(col_username)
    if Student.exists?(:col_username => col_username)
      return Student.find_by_col_username(col_username)
    end
    false
  end
end