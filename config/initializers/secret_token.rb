# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'
#SampleApp::Application.config.secret_key_base = secure_token
  def secure_token
    token_file = Rails.root.join('.secret');
    if File.exist?(token_file)
      File.read(token_file).chomp
    else
      token = SecureRandom.hex(64)
      File.write(token_file, token)
      token
    end
  end
#end
SampleApp::Application.config.secret_key_base = secure_token
#SampleApp::Application.config.secret_key_base = 'fac1e2dd6f828d9615ba4d2f3d56791fd0af90fc7f314584199767f3ec41acf2fb549a38fec58ac98cb53340c0fcfb3bd0f7a55f7dd4697d2aefa2c0dbc81b04'
