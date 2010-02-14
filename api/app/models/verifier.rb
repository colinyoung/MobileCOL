class Verifier < ActionMailer::Base
  def signup_notification(user)
    receipients "#{User.first_name} #{User.last_name} <#{User.email}>"
    from        "api_accounts@#{PRODUCT_DOMAIN}"
    subject     "Your API account on #{PRODUCT_NAME}"
    body        :account => user
end