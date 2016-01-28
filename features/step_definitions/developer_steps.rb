Given 'I am not already a developer' do
  # noop
end

Given 'I am already a developer' do
  @developer = FactoryGirl.create(:developer, email: 'johnsmith@hashrocket.com', username: 'johnsmith')
end

Given 'I am a signed in developer' do
  steps %(
    Given I try to sign up or sign in with valid credentials
    Then I am signed in
    )
end

Given(/^I am a signed in developer with email "([^"]*)"$/) do |email|
  steps %(
    Given I try to sign up or sign in with email "#{email}"
    Then I am signed in
    )
end

And 'I try to sign up or sign in with valid credentials' do
  OmniAuth.config.add_mock(:google_oauth2, info: { name: 'John Smith', email: 'johnsmith@hashrocket.com' })
  visit google_oauth2_path
end

Given(/^I try to sign up or sign in with email "([^"]*)"$/) do |email|
  OmniAuth.config.add_mock(:google_oauth2, info: { name: 'John Smith', email: email })
  visit google_oauth2_path
end

Then 'I am signed in' do
  expect(current_path).to eq root_path
  expect(page).to have_content 'johnsmith'
  @developer = Developer.last
end

And 'I am an admin' do
  @developer.admin = true
  @developer.save
end

And 'I have a post' do
  @post = FactoryGirl.create(:post, developer: @developer)
end

And 'I have a post with markdown' do
  FactoryGirl.create(:post, developer: @developer, body: '*emphasis*')
end

And 'I click sign out' do
  click_on 'Sign Out'
end

Then 'I should not see my username in the upper right' do
  expect(page).to_not have_content 'johnsmith'
end

When(/^I change my editor to "(.*)"$/) do |editor_name|
  select editor_name, from: 'Editor'
end

Then(/^the editor is set to "(.*)"$/) do |editor_name|
  if editor_name == 'Ace'
    expect(page).to have_selector('textarea#post_body', visible: false)
    expect(page).to have_selector('.ace_editor')
  elsif editor_name == 'Ace (w/ Vim)'
    expect(page).to have_selector('.ace_editor.normal-mode', visible: true)
    expect(page).to have_selector('textarea#post_body', visible: false)
  elsif editor_name == 'Text Field'
    expect(page).to have_selector('textarea#post_body', visible: true)
    expect(page).to have_selector('#editor', visible: false)
  else
    fail 'Unknown editor'
  end
end

And 'I do not see the signout link' do
  expect(page).to_not have_link 'Sign Out'
end

When 'I click edit' do
  within '.post' do
    click_on 'edit this post'
  end
end
