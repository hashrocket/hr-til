Given 'I see the homepage' do
  expect(current_path).to eq root_path
end

Given 'I visit the homepage' do
  visit root_path
end

And 'I click profile' do
  click_on 'Profile'
end

Then 'I see my profile page' do
  within 'h3' do
    expect(page).to have_content 'My Profile'
  end
end

When 'I enter my twitter handle' do
  within 'form' do
    fill_in 'Twitter handle', with: 'hashrocket'
    click_on 'Submit'
  end
end

When 'I enter an invalid twitter handle' do
  within 'form' do
    fill_in 'Twitter handle', with: 'a.!&'
    click_on 'Submit'
  end
end

And 'my twitter handle is set' do
  @developer.reload
  expect(@developer.twitter_handle).to eq 'hashrocket'
end


Then(/^I see an error message "(.*?)"$/) do |error|
  within 'section' do
    expect(page).to have_content error
  end
end

Given 'I am a visitor' do
  # noop
end

Then(/^I see a message "(.*?)"$/) do |message|
  expect(page).to have_content message
end

Then 'I see copyright and company information' do
  within 'footer' do
    expect(page).to have_content "© #{Date.today.year}"
    expect(page).to have_link "Hashrocket", href: 'http://hashrocket.com'
  end
end

When 'I click cancel' do
  click_on 'cancel'
end

When 'I visit the Atom feed page' do
  visit root_path(format: "atom")
end

Then 'I see an Atom feed' do
  expect(page).to have_content '?format=atom'
  expect(page).to have_content 'Today I learned about web development'
end
