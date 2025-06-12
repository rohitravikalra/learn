require 'rotp'
require 'securerandom'
require 'base32'

def generate_totp(secret_key, time = Time.now)
  totp = ROTP::TOTP.new(secret_key, interval: 30)
  totp.at(time) # Returns the 6-digit TOTP code 
end

secret_key = SecureRandom.hex
base32_encoded_secret = Base32.encode(secret_key)
puts secret_key
puts base32_encoded_secret
generated_code = generate_totp(secret_key)
puts generated_code 