When 'user selects the {string} character link' do |character|
  @characters_page.clink_character_link(character)
end

Then 'user should see {string} alter ego' do |alter_ego|
  expect(@characters_page.element_text(CharactersPage::CHARACTER_ALTER_EGO)).to eql(alter_ego)
end

And 'user should see character not found error message' do
  expect(@characters_page.element_text(CharactersPage::CHARACTER_NOT_FOUND_MSG)).to eql('Character not found')
end