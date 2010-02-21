class Verifier < ActionMailer::Base
  def signup_notification(user)
    recipients  user.email
    cc           "me@colinyoung.name"
    from         "accounts@#{PRODUCT_DOMAIN}"
    subject       "Your API account on #{PRODUCT_NAME}"
    body          :account => user
    content_type  "text/html"
  end
end