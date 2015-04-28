require 'rails_helper'

describe TagDecorator do
  it_should_behave_like 'a presenter of posts' do
    subject { tag.decorate }
  end
end
