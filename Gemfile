source 'https://rubygems.org'

ruby '2.3.3'

gem 'rails', '~> 5.x'

gem 'active_model_serializers'
gem 'airbrake', '~> 5.4'
gem 'authem'
gem 'autoprefixer-rails'
gem 'dynamic_form'
gem 'haml-rails'
gem 'httparty'
gem 'jbuilder', '~> 2.0'
gem 'kaminari'
gem 'omniauth-google-oauth2'
gem 'pg'
gem 'puma'
gem 'rack-cors', require: 'rack/cors'
gem 'redcarpet'
gem 'rouge'
gem 'scenic', '~> 1.3'
gem 'sucker_punch', '~> 2.0'
gem 'twitter'

group :development do
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'phil'
  gem 'spring'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'figaro'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'rspec-rails'
end

group :production do
  gem 'rails_12factor'
end

group :test do
  gem 'capybara-webmock'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false, git: 'https://github.com/colszowka/simplecov'
  gem 'webmock'
  gem 'rails-controller-testing'
end
