Given(/^I (see|visit) the homepage$/) do |_|
  visit root_path
  expect(page).to have_content('Hashrocket TIL')
end

Then(/^I see an error message "(.*?)"$/) do |error|
  within '#flash' do
    expect(page).to have_content(error)
  end
end
