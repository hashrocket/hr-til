When 'I click signup' do
  click_on 'Sign Up'
end

Then 'I see the signup page' do
  within 'h3' do
    expect(page).to have_content 'Create an Account'
  end
end

When 'I enter a valid username' do
  within 'form' do
    fill_in 'Username', with: 'username'
  end
end

And 'I enter a valid email' do
  within 'form' do
    fill_in 'Email', with: 'developer@hashrocket.com'
  end
end

And 'I enter a valid password' do
  within 'form' do
    fill_in 'Password', with: 'ha$hrocket'
    fill_in 'Password Confirmation', with: 'ha$hrocket'
  end
end

When 'I click create account' do
  within 'form' do
    click_on 'Create Account'
  end
end

Then 'I see my username in the upper right' do
  expect(page).to have_content 'username'
end

And 'I do not see the signup link' do
  expect(page).to_not have_link 'Sign Up'
end

And 'I see the signup link' do
  expect(page).to have_link 'Sign Up'
end

And 'I am a developer with credentials' do
  @developer = FactoryGirl.create(:developer)
end

When 'I click sign in' do
  click_on 'Sign In'
end

Then 'I see the signin page' do
  within 'h3' do
    expect(page).to have_content 'Sign in to your Account'
  end
end

When 'I enter my credentials' do
  within 'form' do
    fill_in 'Email', with: @developer.email
    fill_in 'Password', with: @developer.password
  end
end

And 'I click the sign in button' do
  within 'form' do
    click_on 'Sign In'
  end
end

And 'I do not see the signin link' do
  expect(page).to_not have_link 'Sign In'
end

When 'I enter my credentials incorrectly' do
  within 'form' do
    fill_in 'Email', with: @developer.email
    fill_in 'Password', with: 'foobar'
  end
end

And 'I see the signin link' do
  expect(page).to have_link 'Sign In'
end

Given 'I am a signed in developer' do
  steps %Q{
    Given I am a developer with credentials
    Given I see the homepage
    When I click sign in
    Then I see the signin page
    When I enter my credentials
    And I click the sign in button
    Then I see my username in the upper right
  }
end

And 'I have a post' do
  tag = FactoryGirl.create(:tag)
  FactoryGirl.create(:post, tag: tag, developer: @developer)
end

And 'I click sign out' do
  click_on 'Sign Out'
end

Then 'I should not see my username in the upper right' do
  expect(page).to_not have_content 'developer'
end

And 'I do not see the signout link' do
  expect(page).to_not have_link 'Sign Out'
end

When 'I click edit' do
  within '.post' do
    click_on "[edit]"
  end

end
