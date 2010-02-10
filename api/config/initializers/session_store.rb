# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_api_session',
  :secret      => 'c22a80facdac0808038e6e3f312e2ad534294e9e57275166ae0583b0990c78d655fc9eac548a276fe7d118e94c25137d2a1559fd990a0362baf02229ae1bb01e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
