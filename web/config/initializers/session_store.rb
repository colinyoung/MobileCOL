# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_web_session',
  :secret      => '9944216fe9231dfc989e54bcf0ae1b15bde80bfc89ff59babf9c3313e0653abcb2408df3b72e724e6ad4b03b8d33bf91b981fc2459b0080691dd1b5eaedddefd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
