Given 'I see the homepage' do
  within 'body header h1' do
    expect(page).to have_content 'TIL / Hashrocket'
  end
end

Given 'I visit the homepage' do
  visit root_path
end

Then(/^I see an error message "(.*?)"$/) do |error|
  within '#flash' do
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

Then 'I see a link to the Atom feed' do
  within '.rss' do
    expect(page).to have_link '', href: root_path(format: "atom")
  end
end

When 'I click the Atom feed link' do
  within '.rss' do
    click_on ''
  end
end

Then 'I see an Atom feed' do
  expect(page).to have_content '?format=atom'
  expect(page).to have_content 'Today I learned about web development'
end
