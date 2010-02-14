# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title(string)
    @content_for_title = string
  end
end
