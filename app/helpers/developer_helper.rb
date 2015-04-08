module DeveloperHelper

  def generate_username(email)
    email.delete(' ').downcase
  end
end
