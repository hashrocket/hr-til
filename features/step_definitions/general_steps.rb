Then(/^I see an error message "(.*?)"$/) do |error|
  within '.error' do
    expect(page).to have_content(error)
  end
end
