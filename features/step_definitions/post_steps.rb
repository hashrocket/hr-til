When 'I click create TIL' do
  click_on 'Create TIL'
end

Then 'I see a form for TIL' do
  within 'h3' do
    expect(page).to have_content 'Create TIL'
  end
end

Given 'a tag exists' do
  @tag = FactoryGirl.create(:tag)
end

When 'I enter information into that form' do
  within 'form' do
    fill_in 'Body', with: 'I learned about Rails'
  end
end

When 'I enter a body with the first line less than fifty characters' do
  within 'form' do
    fill_in 'Body', with: "I learned how to split a string\nAnd other things"
  end
end

When 'I enter a body with the first line greater than fifty characters' do
  within 'form' do
    long_body = 'word ' * 10 + "extra content"
    fill_in 'Body', with: long_body
  end
end

When 'I enter information with markdown headers into that form' do
  within 'form' do
    markdown_content = '##### Small Header'
    fill_in 'Body', with: markdown_content
  end
end

When 'I enter information with markdown inline code into that form' do
  within 'form' do
    markdown_content = '`killer robot attack`'
    fill_in 'Body', with: markdown_content
  end
end

When 'I enter information with markdown bullets into that form' do
  within 'form' do
    markdown_content = '* item from a list of items'
    fill_in 'Body', with: markdown_content
  end
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
  within '.post_group .post' do
    expect(page).to have_content "username1"
    expect(page).to have_content 'I learned about Rails'
  end
end

Then 'I see a title created from the first line of the body' do
  within '.post_group .post .title' do
    expect(page).to have_content 'I learned how to split a string'
    expect(page).to_not have_content 'And other things'
  end
end

Then 'I see a title created from the first fifty characters' do
  within '.post_group .post .title' do
    expect(page).to have_content 'word word word word word word word word word word...'
    expect(page).to_not have_content ' extra content'
  end
end

Then 'I see the markdown headers I created' do
  within '.post_group .post .body h5' do
    expect(page).to have_content 'Small Header'
  end
end

Then 'I see the markdown inline code I created' do
  within '.post_group .post .body code' do
    expect(page).to have_content 'killer robot attack'
  end
end

Then 'I see the title with inline code' do
  within '.post_group .post .title code' do
    expect(page).to have_content 'killer robot attack'
  end
end

Then 'I see the markdown bullets I created' do
  within '.post_group .post .body li' do
    expect(page).to have_content 'item from a list of items'
  end
end

And 'I see the tag I selected' do
  within '.post_group .post' do
    expect(page).to have_content '#phantomjs'
  end
end

Given 'there exist TILs for today, yesterday, and last week' do
  rails_dev    = FactoryGirl.create(:developer, username: 'railsguy')
  ember_dev    = FactoryGirl.create(:developer, username: 'embergal')
  clojure_dev  = FactoryGirl.create(:developer, username: 'clojureman')
  karate_dev   = FactoryGirl.create(:developer, username: 'karatedude')

  tag = FactoryGirl.create(:tag)

  @karate_post  = FactoryGirl.create(:post, :for_today, developer: karate_dev, body: 'I learned about Karate', tag: tag)
  @clojure_post = FactoryGirl.create(:post, :for_yesterday, developer: clojure_dev, body: 'I learned about Clojure', tag: tag)
  @ember_post   = FactoryGirl.create(:post, :for_yesterday, developer: ember_dev, body: 'I learned about Ember', tag: tag)
  @rails_post   = FactoryGirl.create(:post, :for_last_week, developer: rails_dev, body: 'I learned about Rails', tag: tag)
end

Given 'there are TILs with that tag' do
  developer = FactoryGirl.create(:developer)
  3.times { FactoryGirl.create(:post, developer: developer, tag: @tag) }
end

Given 'there is a TIL with that tag' do
  developer = FactoryGirl.create(:developer)
  FactoryGirl.create(:post, developer: developer, tag: @tag)
end

When 'I click the tag' do
  within '.content .post_group .post' do
    click_on '#phantomjs'
  end
end

Given 'there are no TILs with that tag' do
  # noop
end

When "I visit '/that tag'" do
  visit '/phantomjs'
end

Then 'I see the post tagged with that tag' do
  within 'h3' do
    expect(page).to have_content('Phantomjs')
  end

  expect(page).to have_selector '.post', count: 1
end

Then 'I see all posts tagged with that tag' do
  within 'h3' do
    expect(page).to have_content('Phantomjs')
  end

  expect(page).to have_selector '.post', count: 3
end

Then 'I see TILs sorted and grouped by date/time' do
  within 'h3' do
    expect(page).to have_content('All Posts')
  end

  within '.content .post_group:first-child' do
    expect(page).to have_content('Today')

    expect(page).to have_content('karatedude')
    expect(page).to have_content('I learned about Karate')
    expect(page).to have_content('#phantomjs')
  end

  within '.content .post_group:nth-child(2)' do
    expect(page).to have_content(@clojure_post.created_at.strftime('%A, %b %d'))

    expect(page).to have_content('clojureman')
    expect(page).to have_content('I learned about Clojure')
    expect(page).to have_content('#phantomjs')

    expect(page).to have_content('embergal')
    expect(page).to have_content('I learned about Ember')
    expect(page).to have_content('#phantomjs')
  end

  within '.content .post_group:last-child' do
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

Given 'posts exist for a given author' do
  developer = FactoryGirl.create(:developer, username: 'prolificposter')
  tag = FactoryGirl.create(:tag)

  3.times { FactoryGirl.create(:post, developer: developer, tag: tag) }
end

When "I visit the url 'http://domain/author/username'" do
  visit "author/prolificposter"
end

When "I click that author's username" do
  within '.content .post_group' do
    first('.username').click_on('prolificposter')
  end
end

Then 'I see all the posts for that author' do
  within 'h3' do
    expect(page).to have_content('Prolificposter')
  end

  expect(page).to have_selector '.post', count: 3
end
