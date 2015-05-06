class SlackNotifier
  include SuckerPunch::Job
  include HTTParty
  include Rails.application.routes.url_helpers

  base_uri "https://hashrocket.slack.com"
  CHANNEL = "#til"
  NOTIFY_ENDPOINT = "/services/hooks/slackbot"

  def perform(post)
    return if ENV['slack_token'].blank?
    message = "[TIL]  #{post.developer_username} #{Rails.configuration.server_url}#{post_path(post)}"
    response = self.class.post NOTIFY_ENDPOINT,
      query: notify_query,
      body: message
    unless response.success?
      raise "Sending message to slack failed with response #{response.code}"
    end
  end

  def notify_query
    {
      token: ENV['slack_token'],
      channel: CHANNEL
    }
  end
end
