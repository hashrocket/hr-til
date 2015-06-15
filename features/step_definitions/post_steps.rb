When 'I click create post' do
  within '.site_nav' do
    click_on 'Create Post'
  end
end

Then 'I see a form for posts' do
  within '#post_edit' do
    expect(page).to have_content 'Create Post'
  end
end

Given 'a channel exists' do
  @channel = FactoryGirl.create(:channel)
end

Given 'a post exists' do
  @post = FactoryGirl.create(:post)
end

Given 'a post exists with 10 likes' do
  @post = FactoryGirl.create(:post, likes: 10)
end

Given 'a post exists by another developer' do
  @others_post = FactoryGirl.create(:post)
end

When 'I visit the edit page for that post' do
  visit edit_post_path @others_post
end

When 'I enter information into that form' do
  fill_in 'Title', with: 'Web Development'
  fill_in 'Body', with: 'I learned about Rails'
end

When 'I enter new information into that form' do
  fill_in 'Title', with: 'I changed the header'
  fill_in 'Body', with: 'I learned about changing content'
end

When 'I edit the post to no longer have a body' do
  fill_in 'Body', with: ''
end

When 'I enter information with markdown inline code into that form' do
  fill_in 'Title', with: 'Codified'
  markdown_content = '`killer robot attack`'
  fill_in 'Body', with: markdown_content
end

When 'I enter information with markdown fenced code into that form' do
  fill_in 'Title', with: 'Fenced'
  markdown_content = "```first line\nsecond line\nthird line\n```"
  fill_in 'Body', with: markdown_content
end

When 'I enter information with markdown bullets into that form' do
  fill_in 'Title', with: 'Bulletized'
  markdown_content = '* item from a list of items'
  fill_in 'Body', with: markdown_content
end

And 'I select a channel' do
  select @channel.name, from: 'Channel'
end

And 'I select no channel' do
  select '', from: 'Channel'
end

When 'I click submit' do
  click_on 'Submit'
end

And 'I click raw' do
  click_on 'view raw'
end

When 'I click on my username in the upper right' do
  within '.site_nav' do
    click_on @developer.username
  end
end

Then 'I see the post I created' do
  within '.post' do
    expect(page).to have_content 'johnsmith'
    expect(page).to have_content 'I learned about Rails'
  end
end

Then(/^I see the likes count equals (\d+)$/) do |num|
  within '.post' do
    expect(page).to have_content "liked #{num} time"
  end
end

And 'I see a link to tweet' do
  within '.post' do
    expect(page).to have_link 'Tweet'
  end
end

Then 'I see the markdown inline code I created' do
  within '.post code' do
    expect(page).to have_content 'killer robot attack'
  end
end

Then 'I see the markdown fenced code I created' do
  within '.post' do
    expect(page).to have_content "first line\nsecond line\nthird line"
  end
end

Then 'I see the markdown bullets I created' do
  within '.post section li' do
    expect(page).to have_content 'item from a list of items'
  end
end

And 'I see the channel I selected' do
  within '.post' do
    expect(page).to have_content '#phantomjs'
  end
end

Given 'there exist posts for today, yesterday, and last week' do
  rails_dev    = FactoryGirl.create(:developer, username: 'railsguy')
  ember_dev    = FactoryGirl.create(:developer, username: 'embergal')
  karate_dev   = FactoryGirl.create(:developer, username: 'karatedude')

  @rails_post   = FactoryGirl.create(:post, :for_last_week, developer: rails_dev, body: 'I learned about Rails')
  @ember_post   = FactoryGirl.create(:post, :for_yesterday, developer: ember_dev, body: 'I learned about Ember')
  @karate_post  = FactoryGirl.create(:post, :for_today, developer: karate_dev, body: 'I learned about Karate')
end

Given 'three posts exist' do
  @first_post   = FactoryGirl.create(:post, body: 'First')
  @second_post  = FactoryGirl.create(:post, body: 'Second')
  @third_post   = FactoryGirl.create(:post, body: 'Third')
end

When 'I go to the most recent post' do
  visit post_path @third_post
end

When 'I see only a left arrow' do
  within 'footer nav' do
    expect(page).to have_link 'previous TIL'
    expect(page).to_not have_link 'next TIL'
  end
end

When 'I click the left arrow' do
  within 'footer nav' do
    click_on 'previous TIL'
  end
end

Then 'I see the second most recent post' do
  expect(current_path).to eq(post_path(@second_post))
end

And 'I see a right arrow and a left arrow' do
  within 'footer nav' do
    expect(page).to have_link 'next TIL'
    expect(page).to have_link 'previous TIL'
  end
end

Then 'I see the least recent post' do
  expect(current_path).to eq(post_path(@first_post))
end

When 'I see only a right arrow' do
  within 'footer nav' do
    expect(page).to have_link 'next TIL'
    expect(page).to_not have_link 'previous TIL'
  end
end

When 'I click the right arrow' do
  within 'footer nav' do
    click_on 'next TIL'
  end
end

Given 'there are posts in that channel' do
  FactoryGirl.create_list(:post, 3, channel: @channel)
end

When 'I click the channel' do
  first('.post').click_link '#phantomjs'
end

Given 'there are no posts with that channel' do
  # noop
end

When "I visit '/that channel'" do
  visit '/phantomjs'
end

When 'I search for "$query" in the address bar' do |query|
  visit "/?q=#{URI.encode(query)}"
end

When 'I search for "$query" in the search bar' do |query|
  click_link "search"
  fill_in 'q', with: query
  click_on 'Search'
end

Then 'I see the "$body_fragment" post' do |body_fragment|
  expect(page.text).to match /#{body_fragment}/i
end

Then 'I do not see the "$body_fragment" post' do |body_fragment|
  expect(page.text).to_not match /#{body_fragment}/i
end

Then 'I see all posts with that channel' do
  expect(page).to have_content '3 posts about #phantomjs'
  expect(page).to have_selector '.post', count: 3
  expect(page.title).to eq 'Posts about phantomjs - Today I Learned'
end

Then 'I see the sorted posts' do
  timestamp = ->(post) { post.created_at.strftime('%B %-e, %Y') }

  within '.post:first-child' do
    expect(page).to have_content 'karatedude'
    expect(page).to have_content 'I learned about Karate'
    expect(page).to have_content '#phantomjs'
    expect(page).to have_content timestamp[@karate_post]
  end

  within '.post:nth-child(2)' do
    expect(page).to have_content 'embergal'
    expect(page).to have_content 'I learned about Ember'
    expect(page).to have_content '#phantomjs'
    expect(page).to have_content timestamp[@ember_post]
  end

  within '.post:last-child' do
    expect(page).to have_content 'railsguy'
    expect(page).to have_content 'I learned about Rails'
    expect(page).to have_content '#phantomjs'
    expect(page).to have_content timestamp[@rails_post]
  end
end

When 'I enter a long body into that form' do
  long_body = 'word ' * 300
  fill_in 'Body', with: long_body
end

Given 'posts exist for a given author' do
  developer = FactoryGirl.create(:developer, username: 'prolificposter')
  FactoryGirl.create(:post, :for_last_week, developer: developer)
  FactoryGirl.create(:post, :for_yesterday, developer: developer)
  @newest_post = FactoryGirl.create(:post, developer: developer, title: 'Newest post')
end

When "I visit the url 'http://domain/author/username'" do
  visit 'author/prolificposter'
end

When "I click that author's username" do
  within '.post:first-child aside' do
    click_on 'prolificposter'
  end
end

Then 'I see all the posts for that author grouped by date/time' do
  within '#author' do
    expect(page).to have_content '3 posts by prolificposter'
  end

  expect(page.title).to include 'Posts by prolificposter'
  expect(page).to have_selector '.post', count: 3

  within first('.post') do
    expect(page).to have_content 'Today'
    expect(page).to have_content 'Newest post'
  end
end

When 'I click on the title of the post' do
  within '.post' do
    click_on 'Web Development'
  end
end

When 'I click on the date of the post' do
  within '.post' do
    click_on @post.created_at.strftime('%B %-e, %Y')
  end
end

When 'I visit a mangled version of the show url' do
  visit "/posts/#{@post.slug}-web-cool-tricks"
end

When 'I visit a mangled version of the edit url' do
  visit "/posts/#{@post.slug}-web-cool-tricks/edit"
end

Then 'I see the show page for that post' do
  expect(current_path).to eq "/posts/#{@post.slug}-web-development"
  expect(page.title).to eq 'Web Development - Today I Learned'

  within '.post' do
    expect(page).to have_content @post.title
    expect(page).to have_content @post.developer_username
    expect(page).to have_content 'Today I learned about web development'
    expect(page).to have_content '#phantomjs'
  end
end

And 'I see a unique CSS selector for that channel' do
  within '.post' do
    expect(page).to have_selector '.phantomjs'
  end
end

Then 'I see the show page for that edited post' do
  within '.post' do
    expect(page).to have_content 'I changed the header'
    expect(page).to have_content 'I learned about changing content'
  end
end

Then 'I see the edit page for that post' do
  within '#post_edit' do
    expect(page).to have_content 'Edit Post'
  end

  within 'textarea#post_body' do
    expect(page).to have_content 'Today I learned about web development'
  end
end

Then 'I see the edit page for my markdown post' do
  within '#post_edit' do
    expect(page).to have_content 'Edit Post'
  end

  within 'textarea#post_body' do
    expect(page).to have_content '*emphasis*'
  end
end

When 'I try to add a post' do
  visit new_post_path
end

When 'I try to edit that post' do
  visit edit_post_path(@post)
end

Given 'no posts exist' do
  # noop
end

And 'I see a markdown preview of my post' do
  within('.post .content_preview em') do
    expect(page).to have_content 'emphasis'
  end
end

Then 'I see a markdown preview with my rendered code' do
  within('.post .content_preview code') do
    expect(page).to have_content 'killer robot attack'
  end
end

And 'no post was created' do
  expect(page).to_not have_selector '.post'
end

And 'I see my unedited post' do
  expect(page).to have_selector '.post', count: 1
  within '.post' do
    expect(page).to have_content 'Web Development'
    expect(page).to have_content 'Today I learned about web development'
  end
end

When 'I enter 1 word and a newline into that form' do
  fill_in 'Body', with: "word \n"
end

When(/^I enter (\d+) words? into that form$/) do |number|
  phrase = (['word'] * number.to_i).join ' '
  fill_in 'Body', with: phrase
end

Then(/^I see a message saying I have (\-?\d+) (word|words) left$/) do |number, noun|
  within '#post_edit' do
    expect(page).to have_content "#{number} #{noun} available"
  end
end

And 'the message is red' do
  within '#post_edit' do
    expect(page).to have_selector '.negative'
  end
end

And 'the message is not red' do
  expect(page).to_not have_selector '.negative'
end

Given(/^a post exists with (?:a|the) body "(.*?)"$/) do |body|
  @post = FactoryGirl.create(:post, body: body)
end

When 'I visit the most recent post show page' do
  visit post_path Post.last
end

When 'I click the Like count' do
  within '.post' do
    click_link 'like'
  end
end

Then 'the post has still been liked by me' do
  expect(page).to have_selector '.liked'
end

Given(/^(\d+) posts exist$/) do |num|
  FactoryGirl.create_list(:post, num.to_i)
end

Then(/^I should see (\d+) posts$/) do |num|
  expect(page).to have_selector '.post', count: num.to_i
end

Then(/^I should see a "(.*?)" button$/) do |arg|
  expect(page).to have_link arg
end

Then(/^I should not see a "(.*?)" button$/) do |arg|
  expect(page).to_not have_link arg
end

When(/^I click "(.*?)"$/) do |arg|
  click_link arg
end
