require 'simplecov'
require 'cucumber/rails'
require 'webmock/cucumber'

WebMock.disable_net_connect!(allow_localhost: true)

OmniAuth.config.test_mode = true

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise 'You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it.'
end

Cucumber::Rails::Database.javascript_strategy = :truncation

Capybara.javascript_driver = :capybara_webmock
Capybara::Webmock.start

at_exit do
  Capybara::Webmock.stop
end
