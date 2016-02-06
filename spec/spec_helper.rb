require 'simplecov'
require 'pathname'
require 'webmock/rspec'

Dir[Pathname(__FILE__).dirname.join('support/*.rb')].each { |file| require file }

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.default_formatter = 'doc' if config.files_to_run.one?

  config.before(:each) do
    stub_const('ENV', {
      'permitted_domains' => 'example.com'
    })
  end
end
