And 'user should see character not found error message' do
  expect(@characters_page.character_not_found.text).to eql('Character not found')
end