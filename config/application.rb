require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Capstone
  class Application < Rails::Application

  	Mongoid.load!('./config/mongoid.yml')
  	config.generators {|g| g.orm :active_record}
  	#config.generators {|g| g.orm :mongoid}

  	config.middleware.insert_before 0, "Rack::Cors"  do
  		allow do
  			#Add domains later
  			origins '*'

  			resource '/api/*',
  				:headers => :any,
  				:methods => [:get, :post, :put, :delete, :options]
  		end
  	end


	config.active_record.raise_in_transactional_callbacks = true 

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
