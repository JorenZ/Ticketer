source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Using postgresql for this one
gem 'pg', '~> 0.15'
gem 'pg_power', '1.3.1'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'thin'
gem 'i18n'
gem 'state_machine'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

# Pagination
gem 'will_paginate', '~> 3.0'

# Strong parameters to allow private method x_params with 
# 	X.create( x_params ) 
# instead of 
# 	X.new( :x )
gem 'strong_parameters'

group :development, :test do
	gem "rspec-rails", '~> 3.0.0'
  gem "ruby-prof"

  # factories
  gem 'factory_girl_rails'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'

end