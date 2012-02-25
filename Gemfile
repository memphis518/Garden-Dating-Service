source :gemcutter

gem 'rails',            '~> 2.3.5', :require => nil

gem 'haml'
gem 'json'

gem 'datamapper',       '>= 0.10.2'
gem 'data_objects',     '>= 0.10.1'
gem 'rails_datamapper', '>= 0.10.2'

group :development do
  gem 'do_sqlite3', '>= 0.10.1.1'
end

group :production do
  gem 'do_postgres', '>= 0.10.1'
end

group :test do
  gem 'do_sqlite3', '>= 0.10.1.1'
  gem 'factory_girl'
  gem 'factory_girl_extensions'
  gem 'rspec',                  :require => nil
  gem 'rspec-rails',            :require => nil
  gem 'webrat'
end

#bundle_path 'vendor/bundler_gems'
#bin_path    'vendor/bundler_bin'
