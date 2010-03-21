# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fireworks_session',
  :secret      => 'eda78c8cc06d06f28f0ea507b14b5a216de0b01fd3dbd2a7b9c795250f9f8e14c8770e60bcfd56bb798b08f587b37c1744f0a9775d82757bca0f065d488e2114'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
