Given 'I see the homepage' do
  visit root_path
  expect(page).to have_content("Hashrocket TIL")
end

When 'I click signup' do
  click_on "Sign Up"
end

Then 'I see the signup page' do
  expect(page).to have_content("Create an Account")
end

When 'I enter a valid username' do
  fill_in 'Username', with: 'johndoe'
end

And 'I enter a valid email' do
  fill_in 'Email', with: 'johndoe@hashrocket.com'
end

And 'I enter a valid password' do
  fill_in 'Password', with: 'ha$hrocket'
  fill_in 'Password Confirmation', with: 'ha$hrocket'
end

When 'I click submit' do
  click_on 'Create Account'
end

Then 'I see my username in the upper right' do
  expect(page).to have_content 'johndoe'
end

And 'I do not see the signup link' do
  expect(page).to_not have_content("Sign Up")
end

Then 'I see validation errors' do
  expect(page).to have_content("Signup failed")
end

And 'I see the signup link' do
  expect(page).to have_content("Sign Up")
end
