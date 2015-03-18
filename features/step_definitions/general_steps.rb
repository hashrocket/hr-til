Given(/^I (see|visit) the homepage$/) do |_|
  visit root_path
  expect(page).to have_content('Hashrocket TIL')
end

Then(/^I see an error message "(.*?)"$/) do |error|
  within '.error' do
    expect(page).to have_content(error)
  end
end

Given 'there exist multiple TILs' do
  rails_dev  = FactoryGirl.create(:developer, username: 'railsguy')
  ember_dev  = FactoryGirl.create(:developer, username: 'embergal')
  karate_dev = FactoryGirl.create(:developer, username: 'karatedude')

  @rails_post   = FactoryGirl.create(:post, developer: rails_dev, body: 'Today I learned about Rails')
  @ember_post   = FactoryGirl.create(:post, :for_yesterday, developer: ember_dev, body: 'Today I learned about Ember')
  @karate_post  = FactoryGirl.create(:post, :for_last_week, developer: karate_dev, body: 'Today I learned about Karate')
end

Then 'I see TILs sorted by date/time' do
  expect(@rails_post).to be
  expect(@ember_post).to be
  expect(@karate_post).to be

  within 'h3' do
    expect(page).to have_content('All Posts')
  end

  within 'article:first-child' do
    expect(page).to have_content('railsguy')
    expect(page).to have_content(@rails_post.created_at.strftime('%A, %b %d'))
    expect(page).to have_content('Today I learned about Rails')
  end

  within 'article:nth-child(2)' do
    expect(page).to have_content('embergal')
    expect(page).to have_content(@ember_post.created_at.strftime('%A, %b %d'))
    expect(page).to have_content('Today I learned about Ember')
  end

  within 'article:last-child' do
    expect(page).to have_content('karatedude')
    expect(page).to have_content(@karate_post.created_at.strftime('%A, %b %d'))
    expect(page).to have_content('Today I learned about Karate')
  end
end
