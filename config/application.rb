require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HrTil
  class Application < Rails::Application
   config.active_record.schema_format = :sql
   config.autoload_paths << Rails.root.join('lib', 'app/decorators')
   config.time_zone = 'Eastern Time (US & Canada)'

   config.middleware.insert_before 0, Rack::Cors do
     allow do
       origins '*'
       resource '*', :headers => :any, :methods => [:get, :options]
     end
   end
  end
end
