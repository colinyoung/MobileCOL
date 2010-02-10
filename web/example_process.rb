require 'rubygems'
require 'mechanize'

def init_with(username, password)
  target = "https://authenticate.cdm.depaul.edu/cas/login?service=https%3a%2f%2fcol.cdm.depaul.edu%2flogin%2fSSO.aspx%3fReturnUrl%3d%252fDefault.aspx"
  agent = Mechanize.new
  page = agent.get(target)

  # initial page = COL CDM login
  form = page.forms.first
  form.username = username
  form.password = password
  page = form.submit
  
  # second page = weird interstital page we get because CDM doesn't redirect us right.
  # we use the 'click' method on the only link to continue.
  page = page.links.first.click
  
  # example = getting the list of classes. the dropdown box on the left is called "aspnetForm"
  page.form_with(:name => "aspnetForm").fields.each do |f|
    if /SelectList/.match(f.class.to_s)
      f.options.each do |option|
        pp option.text
        # "2009-2010 Winter"
        # "2009-2010 Autumn"
        # "2008-2009 Spring"
        # "2008-2009 Winter"
        # "2008-2009 Autumn"
        # "My Current Courses"
        # "CSC-208-801"
        # "IM-230-510"
        # "IT-223-810"
        # "IT-231-501"
      end
    end
  end
end
init_with(USERNAME, PASSWORD)