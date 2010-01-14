# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cootie_catcher_session',
  :secret      => 'b82dbafb72dc8db46666f96ccf11badeb7949e81774d8b280e2cb1320b606dc3594775a438cd516010157b0ea07ce5a1d66d9184d90973543a059aefe50e42f3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
