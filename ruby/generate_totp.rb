require 'rotp'

def generate_random_key
  SecureRandom.base64(10).tr('+/=', 'QIAZ')
end

secret_key = generate_random_key
puts secret_key
totp = ROTP::TOTP.new(secret_key, interval: 30)
generated_code = totp.at(Time.now)
puts "Your TOTP Code (Test Key): #{generated_code}"
