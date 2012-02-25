RAILS_ENV = ENV['RACK_ENV'] if ENV['RACK_ENV']

require "config/environment"

use Rack::Auth::Basic do |u,p|
  u == 'admin' && p == 'l337pr0j3ctn4m3!'
end if RAILS_ENV == 'production'

dev_db = "sqlite3://#{ File.expand_path(File.dirname(__FILE__) + '/db/development.sqlite3') }"

DataMapper.setup :default, ENV['DATABASE_URL'] || dev_db
DataMapper.auto_upgrade!

use Rails::Rack::LogTailer
use Rails::Rack::Static

run ActionController::Dispatcher.new
