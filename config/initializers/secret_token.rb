# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Login::Application.config.secret_key_base = '95d43d279f65b8155c95a534962ab52279b276e386f6f76c9ad44c5f19c826e361b2ff4694741ff8c88bd145d8ed8a055f0e6df815cc40477b97e17a5a0c5501'
