source 'https://rubygems.org'

gem 'rails', '3.2.6'

# See http://blog.yangtheman.com/2012/02/09/facebook-connect-with-rails-omniauth-devise/
# Add omniauth to devise
gem 'devise'
gem 'omniauth'
gem 'oauth2'

# supported providers
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'


gem 'haml'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'mysql2'
  gem 'haml-rails'
  gem 'rspec-rails', '~> 2.11'
  #gem 'selenium-webdriver', '~> 2.25.0'
  #gem 'capybara'
  gem "fixture_builder", "~> 0.3.3"
  gem 'shoulda-matchers', '~> 1.2.0'
  gem 'rr', '>= 1.0.2'
  gem 'email_spec'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  # See https://github.com/thomas-mcdonald/bootstrap-sass#usage
  gem 'sass-rails',   '~> 3.2.3'
  gem 'bootstrap-sass', '~> 2.0.4.0'

  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
  gem 'execjs'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

# For tagging
gem 'acts-as-taggable-on', '~> 2.3.1'

# For wiki
gem 'bluecloth', '>= 2.0.0'
gem 'irwi', :git => 'git://github.com/alno/irwi.git'

gem 'rails_admin'
# For rails admin tags
gem 'rails_admin_tag_list'

gem 'recaptcha', :require => 'recaptcha/rails'
