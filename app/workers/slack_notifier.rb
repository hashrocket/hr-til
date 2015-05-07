class SlackNotifier
  include SuckerPunch::Job
  include HTTParty

  base_uri "https://hooks.slack.com"

  def perform(post)
    return if notify_endpoint.blank?
    response = self.class.post notify_endpoint,
      body: PostSlackSerializer.new(post).to_json
    unless response.success?
      raise "Sending message to slack failed with response #{response.code}"
    end
  end

  private

  def notify_endpoint
    ENV['slack_post_endpoint']
  end
end
