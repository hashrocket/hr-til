module DeveloperHelper

  # TODO Is this how we want to generate usernames?
  def generate_username(google_name)
    google_name.delete(' ').downcase
  end
end
