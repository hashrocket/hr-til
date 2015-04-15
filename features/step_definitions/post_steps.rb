When 'I click create TIL' do
  click_on 'Create Post'
end

Then 'I see a form for TIL' do
  within 'h3' do
    expect(page).to have_content 'Create Post'
  end
end

Given 'a tag exists' do
  @tag = FactoryGirl.create(:tag)
end

Given 'a post exists' do
  developer = FactoryGirl.create(:developer)
  tag = FactoryGirl.create(:tag)

  @post = FactoryGirl.create(:post, developer: developer, tag: tag)
end

Given 'a post exists by another developer' do
  developer = FactoryGirl.create(:developer)
  tag = FactoryGirl.create(:tag)

  @others_post = FactoryGirl.create(:post, developer: developer, tag: tag)
end

When 'I visit the edit page for that post' do
  visit edit_post_path @others_post
end

When 'I enter information into that form' do
  within 'form' do
    fill_in 'Title', with: 'Web Development'
    fill_in 'Body', with: 'I learned about Rails'
  end
end

When 'I enter new information into that form' do
  within 'form' do
    fill_in 'Title', with: 'I changed the header'
    fill_in 'Body', with: 'I learned about changing content'
  end
end


When 'I edit the post to no longer have a body' do
  within 'form' do
    fill_in 'Body', with: ''
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
    fill_in 'Title', with: 'Headerized'
    markdown_content = '##### Small Header'
    fill_in 'Body', with: markdown_content
  end
end

When 'I enter information with markdown inline code into that form' do
  within 'form' do
    fill_in 'Title', with: 'Codified'
    markdown_content = '`killer robot attack`'
    fill_in 'Body', with: markdown_content
  end
end

When 'I enter information with markdown bullets into that form' do
  within 'form' do
    fill_in 'Title', with: 'Bulletized'
    markdown_content = '* item from a list of items'
    fill_in 'Body', with: markdown_content
  end
end

And 'I select a tag' do
  within 'form' do
    select @tag.name, from: 'Tag'
  end
end

And 'I select no tag' do
  within 'form' do
    select '', from: 'Tag'
  end
end

When 'I click submit' do
  within 'form' do
    click_on 'Submit'
  end
end

When 'I click on my username in the upper right' do
  within 'header ul' do
    click_on @developer.username
  end
end

Then 'I see the post I created' do
  within '.post_group .post' do
    expect(page).to have_content "johnsmith"
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

  @rails_post   = FactoryGirl.create(:post, :for_last_week, developer: rails_dev, body: 'I learned about Rails', tag: tag)
  @clojure_post = FactoryGirl.create(:post, :for_yesterday, developer: clojure_dev, body: 'I learned about Clojure', tag: tag)
  @ember_post   = FactoryGirl.create(:post, :for_yesterday, developer: ember_dev, body: 'I learned about Ember', tag: tag)
  @karate_post  = FactoryGirl.create(:post, :for_today, developer: karate_dev, body: 'I learned about Karate', tag: tag)
end

Given 'three posts exist' do
  developer = FactoryGirl.create(:developer)
  tag = FactoryGirl.create(:tag)

  @first_post   = FactoryGirl.create(:post, body: 'First', tag: tag, developer: developer)
  @second_post  = FactoryGirl.create(:post, body: 'Second', tag: tag, developer: developer)
  @third_post   = FactoryGirl.create(:post, body: 'Third', tag: tag, developer: developer)
end

When 'I go to the most recent post' do
  visit post_path @third_post
end

When 'I see only a left arrow' do
  within '.nav' do
    expect(page).to have_link "<"
    expect(page).to_not have_link ">"
  end
end

When 'I click the left arrow' do
  within '.nav' do
    click_on "<"
  end
end

Then 'I see the second most recent post' do
  expect(current_path).to eq(post_path(@second_post))
end

And 'I see a right arrow and a left arrow' do
  within '.nav' do
    expect(page).to have_link ">"
    expect(page).to have_link "<"
  end
end

Then 'I see the least recent post' do
  expect(current_path).to eq(post_path(@first_post))
end

When 'I see only a right arrow' do
  within '.nav' do
    expect(page).to have_link ">"
    expect(page).to_not have_link "<"
  end
end

When 'I click the right arrow' do
  within '.nav' do
    click_on ">"
  end
end

Given 'there are TILs with that tag' do
  developer = FactoryGirl.create(:developer)
  3.times { FactoryGirl.create(:post, developer: developer, tag: @tag) }
end

When 'I click the tag' do
  within '.content .post_group' do
    first('.post').click_on '#phantomjs'
  end
end

Given 'there are no TILs with that tag' do
  # noop
end

When "I visit '/that tag'" do
  visit '/phantomjs'
end

Then 'I see all posts tagged with that tag' do
  within 'h3' do
    expect(page).to have_content '#phantomjs (3 posts)'
  end

  expect(page).to have_selector '.post', count: 3
end

Then 'I see TILs sorted and grouped by date/time' do
  expect(current_path).to eq(root_path)

  within '.content .post_group:first-child' do
    expect(page).to have_content 'Today'

    expect(page).to have_content 'karatedude'
    expect(page).to have_content 'I learned about Karate'
    expect(page).to have_content '#phantomjs'
  end

  within '.content .post_group:nth-child(2)' do
    expect(page).to have_content @clojure_post.created_at.strftime('%A, %b %d')

    expect(page).to have_content 'clojureman'
    expect(page).to have_content 'I learned about Clojure'
    expect(page).to have_content '#phantomjs'

    expect(page).to have_content 'embergal'
    expect(page).to have_content 'I learned about Ember'
    expect(page).to have_content '#phantomjs'
  end

  within '.content .post_group:last-child' do
    expect(page).to have_content @rails_post.created_at.strftime('%A, %b %d')

    expect(page).to have_content 'railsguy'
    expect(page).to have_content @rails_post.created_at.strftime('%A, %b %d')
    expect(page).to have_content 'I learned about Rails'
    expect(page).to have_content '#phantomjs'
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
    first('.username').click_on 'prolificposter'
  end
end

Then 'I see all the posts for that author' do
  within 'h3' do
    expect(page).to have_content 'prolificposter (3 posts)'
  end

  expect(page).to have_selector '.post', count: 3
end

When 'I click on the title of the post' do
  within '.title' do
    click_on 'Web Development'
  end
end

Then 'I see the show page for that post' do
  within '.post' do
    expect(page).to have_content @post.developer_username
    expect(page).to have_content 'Today I learned about web development'
    expect(page).to have_content '#phantomjs'
  end
end

And 'I see a unique CSS selector for that tag' do
  within '.post' do
    expect(page).to have_selector '.phantomjs'
  end
end

Then 'I see the show page for that edited post' do
  within '.title' do
    expect(page).to have_content 'I changed the header'
  end
  within '.post' do
    expect(page).to have_content 'johnsmith'
    expect(page).to have_content 'I learned about changing content'
    expect(page).to have_content '#phantomjs'
  end
end

Then 'I see the edit page for that post' do
  within 'h3' do
    expect(page).to have_content 'Edit Post'
  end

  within 'body' do
    expect(page).to have_content 'Today I learned about web development'
  end
end

When 'I try to add a post' do
  visit new_post_path
end

When 'I try to edit that post' do
  visit edit_post_path(@post)
end

Given 'no posts exist' do
  # noop
end

Then 'I see a preview with my rendered code' do
  within('.post .title') do
    expect(page).to have_content 'Codified'
  end

  within('.post .body code') do
    expect(page).to have_content 'killer robot attack'
  end
end
