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

  describe '#posts_per_day' do
    it 'returns labels and counts for our post activity' do
      yesterday = Date.today - 10.minutes
      today = Date.today + 10.minutes

      FactoryGirl.create_list(:post, 3, published_at: yesterday)
      FactoryGirl.create_list(:post, 5, published_at: today)

      results = described_class.new.send(:posts_per_day)

      results.each do |struct|
        case struct.label
        when yesterday.strftime("%a, %b %-e")
          expect(struct.count).to eq 3
        when yesterday.strftime("%a, %b %-e")
          expect(struct.count).to eq 5
        end
      end
    end
  end
end
