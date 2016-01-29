Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.force_ssl = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.assets.js_compressor = :uglifier

  config.assets.compile = false
  config.assets.digest = true
  config.log_level = :debug
  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false

  config.action_controller.default_url_options = {
    host: 'til.hashrocket.com',
    protocol: 'https://'
  }
end
