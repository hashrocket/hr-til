Given 'I see the homepage' do
  expect(current_path).to eq root_path
end

When 'I visit the statistics page' do
  visit statistics_path
end

Given(/^a post exists for each of the last (\d+) days$/) do |count|
  Date.today.downto(Date.today - (count.to_i - 1)) do |date|
    FactoryGirl.create(:post, created_at: date.end_of_day)
  end
end

Given(/^(\d+) posts exist in (\d+) channels$/) do |posts, channels|
  channels = FactoryGirl.create_list :channel, channels.to_i
  posts.to_i.times do
    FactoryGirl.create(:post, channel: channels.sample)
  end
end

When(/^(\d+) posts exist more than thirty days old$/) do |count|
  FactoryGirl.create_list(:post, count.to_i, :for_last_year)
end

When(/there are (\d+) authors who (have|have not) authored posts/) do |count, authored|
  count.to_i.times do
    dev = FactoryGirl.create(:developer)
    if (authored == "have")
      FactoryGirl.create(:post, developer: dev)
    end
  end
end

Then 'I see statistics' do
  sleep 0.25
  expect(current_path).to eq statistics_path
  expect(page).to have_title 'Statistics'

  within '#activity' do
    expect(page).to have_selector 'li', count: 30
  end

  within '#top-ten' do
    expect(page).to have_link 'li', count: 10
    expect(page).to have_content 'Web Development', count: 10
  end

  within '#channels' do
    expect(page).to have_link 'a', count: 35
    expect(page).to have_content 'phantomjs', count: 35
  end

  within '#authors' do
    expect(page).to have_link 'a', count: 35
    expect(page).to have_content 'username', count: 35
  end
end

Given 'I visit the homepage' do
  visit root_path
end

And 'I visit the post text page' do
  visit post_text_path(@post)
end

And 'I visit the post text page with a mangled url' do
  visit post_path(@post) + 'noise.md'
end

And 'I visit the post page' do
  visit post_path(@post)
end

Then (/^I see "(.*?)"$/) do |content|
  expect(page.body).to include(content)
end

Then(/^I should get a response with content-type "([^"]*)"$/) do |content_type|
  expect(page.response_headers['Content-Type']).to eq(content_type)
end

And 'I click profile' do
  click_on 'Profile'
end

Then 'I see my profile page' do
  within '#profile_edit' do
    expect(page).to have_content 'My Profile'
  end
end

When "I enter a Slack name" do
  fill_in "Slack name", with: 'l33t 10x programmer'
end

Then "I see my Slack name" do
  expect(page).to have_selector("input[value='l33t 10x programmer']")
end

Then(/^I see my email "([^"]*)"$/) do |email|
  expect(page).to have_content(email)
end

When 'I enter my twitter handle' do
  fill_in 'Twitter handle', with: 'hashrocket'
end

When 'I enter an invalid twitter handle' do
  fill_in 'Twitter handle', with: 'a.!&'
end

And 'my twitter handle is set' do
  @developer.reload
  expect(@developer.twitter_handle).to eq 'hashrocket'
end

Then(/^I see an error message "(.*?)"$/) do |error|
  within 'body' do
    expect(page).to have_content error
  end
end

Given 'I am a visitor' do
  # noop
end

Then(/^I see a message "(.*?)"$/) do |message|
  expect(page).to have_content message
end

Then 'I see the footer information' do
  within 'footer' do
    expect(page).to have_link 'Hashrocket', href: 'https://hashrocket.com'
  end
end

When 'I click cancel' do
  click_on 'cancel'
end

When 'I visit the Atom feed page' do
  visit root_path(format: 'atom')
end

Then 'I see an Atom feed' do
  expect(page).to have_content '?format=atom'
  expect(page).to have_content 'Today I learned about web development'
end

Then 'I do not see the edit button' do
  expect(page).to_not have_link 'edit this post'
end

Then 'I see the site name in the title' do
  expect(page.title).to eq SITE_NAME
end

Then(/^I am on the homepage$/) do
  expect(current_path).to eq root_path
end

Then(/^I see a header "(.*?)"$/) do |header|
  within '.page_head h1' do
    expect(page.text).to match /#{header}/i
  end
end

And "I don't see a search header" do
  expect(page).to_not have_selector ".page_head"
end
