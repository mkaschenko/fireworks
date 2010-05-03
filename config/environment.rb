RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.action_controller.allow_forgery_protection = false

  config.gem "haml", :version => ">= 2.2.22"

  config.time_zone = 'UTC'
end