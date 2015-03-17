When 'I click create TIL' do
  click_on 'Create TIL'
end

Then 'I see a form for TIL' do
  within 'h3' do
    expect(page).to have_content 'Create TIL'
  end
end

When 'I enter information into that form' do
  topic = %w(rails ember karate).sample
  @content = "Today I learned about #{topic}"
  fill_in 'Body', with: @content
end

When 'I click create' do
  within '.button' do
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
