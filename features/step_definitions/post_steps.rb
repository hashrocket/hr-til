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
  @content = "I learned about #{topic}"
  fill_in 'Body', with: @content
end

When 'I enter information with markdown headers into that form' do
  markdown_content = '##### Small Header'
  fill_in 'Body', with: markdown_content
end

When 'I enter information with markdown inline code into that form' do
  markdown_content = '`killer robot attack`'
  fill_in 'Body', with: markdown_content
end

When 'I enter information with markdown bullets into that form' do
  markdown_content = '* item from a list of items'
  fill_in 'Body', with: markdown_content
end

And 'I select a tag' do
  within '.new_post' do
    select @tag.name, from: 'Tag'
  end
end

And 'I select no tag' do
  within '.new_post' do
    select '', from: 'Tag'
  end
end

When 'I click create' do
  within '.new_post' do
    click_on 'Create TIL'
  end
end

Then 'I see the post I created' do
  within 'article' do
    expect(page).to have_content @developer.username
    expect(page).to have_content @content
  end
end

Then 'I see the markdown headers I created' do
  within 'article h5' do
    expect(page).to have_content 'Small Header'
  end
end

Then 'I see the markdown inline code I created' do
  within 'article code' do
    expect(page).to have_content 'killer robot attack'
  end
end

Then 'I see the markdown bullets I created' do
  within 'article li' do
    expect(page).to have_content 'item from a list of items'
  end
end

And 'I see the tag I selected' do
  within 'article' do
    expect(page).to have_content('#phantomjs')
  end
end

Given 'there exist TILs for today, yesterday, and last week' do
  rails_dev    = FactoryGirl.create(:developer, username: 'railsguy')
  ember_dev    = FactoryGirl.create(:developer, username: 'embergal')
  clojure_dev  = FactoryGirl.create(:developer, username: 'clojureman')
  karate_dev   = FactoryGirl.create(:developer, username: 'karatedude')

  tag = FactoryGirl.create(:tag)

  @karate_post  = FactoryGirl.create(:post, :for_today, developer: karate_dev, body: 'I learned about Karate', tag_id: tag.id)
  @clojure_post = FactoryGirl.create(:post, :for_yesterday, developer: clojure_dev, body: 'I learned about Clojure', tag_id: tag.id)
  @ember_post   = FactoryGirl.create(:post, :for_yesterday, developer: ember_dev, body: 'I learned about Ember', tag_id: tag.id)
  @rails_post   = FactoryGirl.create(:post, :for_last_week, developer: rails_dev, body: 'I learned about Rails', tag_id: tag.id)
end

Then 'I see TILs sorted and grouped by date/time' do
  save_and_open_page
  within 'h3' do
    expect(page).to have_content('All Posts')
  end

  within '.content article:first-child' do
    expect(page).to have_content('Today')

    expect(page).to have_content('karatedude')
    expect(page).to have_content('I learned about Karate')
    expect(page).to have_content('#phantomjs')
  end

  within '.content article:nth-child(2)' do
    expect(page).to have_content(@clojure_post.created_at.strftime('%A, %b %d'))

    expect(page).to have_content('clojureman')
    expect(page).to have_content('I learned about Clojure')
    expect(page).to have_content('#phantomjs')

    expect(page).to have_content('embergal')
    expect(page).to have_content('I learned about Ember')
    expect(page).to have_content('#phantomjs')
  end

  within '.content article:last-child' do
    expect(page).to have_content(@rails_post.created_at.strftime('%A, %b %d'))

    expect(page).to have_content('railsguy')
    expect(page).to have_content(@rails_post.created_at.strftime('%A, %b %d'))
    expect(page).to have_content('I learned about Rails')
    expect(page).to have_content('#phantomjs')
  end
end

Then(/^I see today's posts in a group labeled "(.*?)"$/) do |label|
  within '.content' do
    expect(page).to have_content(label)
  end
end

When 'I enter a long body into that form' do
  long_body = 'word ' * 201
  fill_in 'Body', with: long_body
end
