require 'rails_helper'

describe DeveloperDecorator do
  it_should_behave_like 'a presenter of posts' do
    subject { developer.decorate }
  end
end
