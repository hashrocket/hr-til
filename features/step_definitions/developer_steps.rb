Given 'I am not already a developer' do
  # noop
end

Given 'I am already a developer' do
  @developer = FactoryGirl.create(:developer, email: 'johnsmith@hashrocket.com', username: 'johnsmith')
end

And 'I see the signin link' do
  expect(page).to have_link 'Rocketeer Sign In'
end

Given 'I am a signed in developer' do
 steps %Q{
   Given I try to sign up or sign in with valid credentials
   Then I am signed in
 }
end

And 'I try to sign up or sign in with valid credentials' do
  OmniAuth.config.add_mock(:google_oauth2, info: { name: 'John Smith', email: 'johnsmith@hashrocket.com' })
  visit root_path
  click_on "Rocketeer Sign In"
end

Then 'I am signed in' do
  expect(current_path).to eq root_path
  expect(page).to have_content 'johnsmith'
  expect(page).to_not have_content 'Sign In'
  @developer = Developer.last
end

And 'I have a post' do
  FactoryGirl.create(:post, developer: @developer)
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

And 'I do not see the signout link' do
  expect(page).to_not have_link 'Sign Out'
end

When 'I click edit' do
  within '.post' do
    click_on "[edit]"
  end
end
