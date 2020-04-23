Given('user sends valid GET request for all characters') do
  @characters = characters
end

Then('all characters should return in the response') do
  expect(@characters.count).to eql(17)
end

Given('user sends valid GET request for character ID {int}') do |character_id|
  @character = specific_character(character_id)
end

Then('character {string} should return in the response') do |character_alias|
  expect(@character[:alias]).to eql(character_alias)
end

Given('user sends a valid request to create character') do
  @character = create_character(CHAR_ALIAS, REAL_NAME, DEBUT, STATUS, BIO)
end

Then('a new character should be created') do
  expect(@character[:alias]).to eql(CHAR_ALIAS)
end