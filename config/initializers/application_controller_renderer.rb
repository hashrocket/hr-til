# Be sure to restart your server when you modify this file.

ApplicationController.renderer.defaults.merge!(
  http_host: ENV['host'],
  https: ENV['protocol'].include?('https')
)
