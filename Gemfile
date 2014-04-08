source 'https://rubygems.org'

gem 'rails', '4.0.4'           # Bundle edge Rails instead: gem 'rails'
gem 'sass-rails', '~> 4.0.2'   # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'     # Compressor for JavaScript assets
gem 'coffee-rails', '~> 4.0.0' # .js.coffee assets and views
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'             # JavaScript library
gem 'turbolinks'               # makes links in your web application faster
gem 'jbuilder', '~> 1.2'       # Build JSON APIs with ease
gem 'devise'                   # User/Client/Admin management
gem "ransack", github: "activerecord-hackery/ransack", branch: "rails-4"
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'haml-rails'

# bundle exec rake doc:rails generates the API under doc/api.
group :doc do
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'better_errors'
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'debugger'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# Could be usefull
# gem 'bcrypt', '~> 3.1.7'       # Use ActiveModel has_secure_password
# gem 'unicorn'                  # Use unicorn as the app server
# gem 'capistrano', group: :development
