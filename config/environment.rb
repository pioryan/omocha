# Load the rails application
require File.expand_path('../application', __FILE__)

ENV['RECAPTCHA_PUBLIC_KEY']  = '6LdU8NUSAAAAAC1pYCho8S6SUvMoSoX_rEnumZaA'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6LdU8NUSAAAAABX0nv3hETxJ3OGU6wXnCmRWzklG'

# Initialize the rails application
Omocha::Application.initialize!
