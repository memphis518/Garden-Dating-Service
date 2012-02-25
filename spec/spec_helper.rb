ENV["RAILS_ENV"] ||= 'test'

require File.dirname(__FILE__) + "/../config/environment" unless defined?(RAILS_ROOT)
require 'spec/autorun'
require 'spec/rails'
require File.dirname(__FILE__) + '/factories'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

DataMapper.auto_migrate!

Webrat.configure do |config|
  config.mode = :rails
  # config.open_error_files = false
end

Spec::Runner.configure do |config|
  transactional_specs(config)
  config.include(Webrat::Matchers, :type => [:integration])
end

class ActionController::Integration::Session
  include Spec::Matchers
end

# FakeWeb.allow_net_connect = false
