load Rails.root.join('config/environments/production.rb')

Rails.application.configure do
  config.action_controller.default_url_options = {
    host: "hr-til-staging.herokuapp.com",
    protocol: "http://"
  }
end
