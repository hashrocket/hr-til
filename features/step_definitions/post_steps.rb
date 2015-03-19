When 'I click create TIL' do
  click_on 'Create TIL'
end

Then 'I see a form for TIL' do
  within 'h3' do
    expect(page).to have_content 'Create TIL'
  end
end

And 'a tag exists' do
  @tag = FactoryGirl.create(:tag)
end

When 'I enter information into that form' do
  topic = %w(rails ember karate).sample
  @content = "Today I learned about #{topic}"
  fill_in 'Body', with: @content
end

And 'I select a tag' do
  within '.new_post' do
    select @tag.name, from: 'Tag'
  end
end

When 'I click create' do
  within '.new_post' do
    click_on 'Create TIL'
  end
end

Then 'I see the post I created' do
  within '.content' do
    expect(@content).to be

    expect(page).to have_content @developer.username
    expect(page).to have_content @content
  end
end

And 'I see the tag I selected' do
  within 'article#0' do
    expect(page).to have_content("Tagged: Phantomjs")
  end
end

Given 'there exist multiple TILs' do
  rails_dev  = FactoryGirl.create(:developer, username: 'railsguy')
  ember_dev  = FactoryGirl.create(:developer, username: 'embergal')
  karate_dev = FactoryGirl.create(:developer, username: 'karatedude')

  tag = FactoryGirl.create(:tag)

  @rails_post   = FactoryGirl.create(:post, developer: rails_dev, body: 'Today I learned about Rails', tag_id: tag.id)
  @ember_post   = FactoryGirl.create(:post, :for_tomorrow, developer: ember_dev, body: 'Today I learned about Ember', tag_id: tag.id)
  @karate_post  = FactoryGirl.create(:post, :for_next_week, developer: karate_dev, body: 'Today I learned about Karate', tag_id: tag.id)
end

Then 'I see TILs sorted by date/time' do
  expect(@rails_post).to be
  expect(@ember_post).to be
  expect(@karate_post).to be

  within 'h3' do
    expect(page).to have_content('All Posts')
  end

  within 'article#0' do
    expect(page).to have_content('karatedude')
    expect(page).to have_content(@karate_post.created_at.strftime('%A, %b %d'))
    expect(page).to have_content('Today I learned about Karate')
    expect(page).to have_content('Tagged: Phantomjs')
  end

  within 'article#1' do
    expect(page).to have_content('embergal')
    expect(page).to have_content(@ember_post.created_at.strftime('%A, %b %d'))
    expect(page).to have_content('Today I learned about Ember')
    expect(page).to have_content('Tagged: Phantomjs')
  end

  within "article#2" do
    expect(page).to have_content('railsguy')
    expect(page).to have_content(@rails_post.created_at.strftime('%A, %b %d'))
    expect(page).to have_content('Today I learned about Rails')
    expect(page).to have_content('Tagged: Phantomjs')
  end
end

When 'I enter a long body into that form' do
  long_body = 'word ' * 201
  fill_in 'Body', with: long_body
end
