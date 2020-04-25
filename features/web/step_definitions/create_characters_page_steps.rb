When 'user submits a valid new character' do
  alt_ego = "#{(Faker::Verb.base).upcase}#{rand(100000)}"
  name = Faker::Name.name
  @create_character_page.create_character_web(alt_ego, name, 'Test', 'Hero', 'Test')
end

When 'user submits a character that already exists' do
  @create_character_page.create_character_web('Batman', 'Test', 'Test', 'Hero', 'Test')
end

Then 'user should see error message that character already exists' do
  error_msg = @create_character_page.create_character_err_msg

  expect(error_msg.size).to eql(1)
  expect(error_msg).to include('Alter ego has already been taken')
end

When 'user submits an empty new character' do
  @create_character_page.create_character_web('', '', '', '', '')
end

Then 'user should see error messages for empty character' do
  error_msgs = @create_character_page.create_character_err_msg

  expect(error_msgs.size).to eql(4)
  expect(error_msgs).to include('Alter ego can\'t be blank')
  expect(error_msgs).to include('Real name can\'t be blank')
  expect(error_msgs).to include('Debut can\'t be blank')
  expect(error_msgs).to include('Bio can\'t be blank')
end