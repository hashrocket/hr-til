class OAuthInfo
  attr_reader :info
  def initialize(response)
    @info = response['info']
  end

  def username
    info.fetch('name').delete(' ').downcase
  end

  def email
    info.fetch 'email'
  end
end
