# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def list_link_to(textnode, vars)
    "<li>" << link_to(textnode, vars) << "</li>"
  end
  
  def title(string)
    @content_for_title = string
  end
  
  def show_nav
    @content_for_nav
  end
  
  def nav(arr)
    output = ""
    arr.each do |link|
      output << link
    end
    @content_for_nav = output
  end
  
  def show_back_nav
    @content_for_back_nav
  end
  
  def back_nav(arr)
    output = ""
    arr.each do |link|
      output << link
    end
    @content_for_back_nav = output
  end  
  
  def hasAlerts?
    false
  end  
end
