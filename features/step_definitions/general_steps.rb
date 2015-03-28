Given(/^I (see|visit) the homepage$/) do |_|
  visit root_path
  within 'body header h1' do
    expect(page).to have_content('Hashrocket TIL')
  end
end

Then(/^I see an error message "(.*?)"$/) do |error|
  within '#flash' do
    expect(page).to have_content(error)
  end
end

Given 'I am a visitor' do
  # noop
end

When 'I try to add a post' do
  visit new_post_path
end

Then(/^I see a message "(.*?)"$/) do |message|
  expect(page).to have_content message
end

Given 'no posts exist' do
  # noop
end
