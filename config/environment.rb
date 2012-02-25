RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

# I've angered the Bundler gods
%w( dm-core dm-validations dm-constraints dm-aggregates ).each {|lib| require lib }

Rails::Initializer.run do |config|
  config.frameworks -= [ :active_record ]

  config.time_zone = 'UTC'

  require File.join(RAILS_ROOT, 'lib/extensions')
  require File.join(RAILS_ROOT, 'lib/authentication')
end

Haml.init_rails(binding)
