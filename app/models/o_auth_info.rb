class OAuthInfo
  attr_reader :info
  def initialize(response)
    @info = response['info']
  end

  def username
    info.fetch('name').delete(' ').gsub(/[^0-9a-z]/i, '').downcase
  end

  def email
    info.fetch 'email'
  end
end
