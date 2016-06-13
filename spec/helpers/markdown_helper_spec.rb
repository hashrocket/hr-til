require 'rails_helper'

RSpec.describe MarkdownHelper, type: :helper do
  describe '#markdown' do
    before { include described_class }

    describe '#render' do
      subject { markdown.render(text) }

      context 'with links' do
        let(:text) { '[My link](http://link.com)' }

        it 'parses links' do
          is_expected.to include('<a href="http://link.com" target="_blank">My link</a>')
        end
      end
    end
  end
end
