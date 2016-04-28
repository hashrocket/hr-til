require 'rails_helper'

describe StatisticsController do
  describe '#hot_posts' do
    it 'returns a list of hot posts' do
      FactoryGirl.create_list(:post, 10)

      expect(described_class.new.send(:hot_posts).size).to eq 10
    end
  end

  describe '#top_ten' do
    it 'returns a list of most liked posts' do
      FactoryGirl.create_list(:post, 9, likes: 9)
      FactoryGirl.create(:post, likes: 10, title: 'Popular post!')

      expect(described_class.new.send(:top_ten).size).to eq 10
      expect(described_class.new.send(:top_ten).first.title).to eq 'Popular post!'
    end
  end
end
