source 'http://rubygems.org'
 
RAILS_VERSION = '~> 3.0.4'
DM_VERSION    = '~> 1.1.0'

gem 'rails', RAILS_VERSION
gem 'mongo'

# Datamapper and extensions
gem 'dm-mongo-adapter'
gem 'dm-sqlite-adapter',    DM_VERSION
gem 'dm-core',              DM_VERSION
gem 'dm-aggregates',        DM_VERSION
gem 'dm-migrations',        DM_VERSION
gem 'dm-timestamps',        DM_VERSION
gem 'dm-types',             DM_VERSION
gem 'dm-validations',       DM_VERSION
gem 'dm-serializer',        DM_VERSION
gem 'dm-rails',             DM_VERSION
gem 'dm-is-list',           DM_VERSION
gem 'dm-accepts_nested_attributes', :git => 'https://github.com/snusnu/dm-accepts_nested_attributes.git'
gem 'dm-chunked_query'

group :test do
  gem 'webrat'
# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
  gem 'rspec-rails'
  gem 'cucumber'
end

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
