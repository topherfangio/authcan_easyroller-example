# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_ae_example_session',
  :secret => 'b13c04fbc7168feef9c71877df5ffccbb77274df09f687612800e67b3c5f786e6456815c5613274e036a7c41cb72acf9e13263c2e39dd771e08359e7de37541b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
