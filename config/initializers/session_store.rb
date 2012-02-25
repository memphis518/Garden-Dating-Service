# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jtrade_session',
  :secret      => 'f951b5825c856399784bb30fb9404041d1a632031cc8a63e3ba4a3f0927eb65782993d3263b6f69b1ac16caa47c4070f144fed32277c6f54cde9be8a34dd96c6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
