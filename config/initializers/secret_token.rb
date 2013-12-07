# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Login::Application.config.secret_key_base = 'acf3207c2c1a239e9a93257f0d1d42ea2b2b6d9381d42bd536316c2330aaa686a1e7d944d4ef67f4dfea4635361e981b13955c301281609a3154616cab894db5'
