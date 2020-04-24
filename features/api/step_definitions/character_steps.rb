Given('user sends valid GET request for all characters') do
  @characters = characters
end

Then('all characters should return in the response') do
  expect(@characters.count).to eql(17)
end

Given('user sends valid GET request for character ID {int}') do |character_id|
  @character = specific_character(character_id)
end

Then('character {string} should return in the response') do |alter_ego|
  expect(@character[:alter_ego]).to eql(alter_ego)
end

Given('user sends a valid request to create character') do
  @character = create_character(ALTER_EGO, REAL_NAME, DEBUT, STATUS, BIO)
end

Then('a new character should be created') do
  expect(@character[:alter_ego]).to eql(ALTER_EGO)
end

Given 'user sends an invalid request to create pre-existing character' do
  begin
    create_character('Batman', 'test', 'test', 'Hero', 'test')
  rescue RuntimeError => e
    @err = JSON.parse(e.message.body, symbolize_names: true)
  end
end

Then 'user should expect to get' do
  expect(@err[:data][:alter_ego]).to eql(['has already been taken'])
end

Given 'user sends an invalid request to create empty character' do
  begin
    create_character('', '', '', '', '')
  rescue RuntimeError => e
    @err = JSON.parse(e.message.body, symbolize_names: true)
  end
end

Then 'user should expect to get errors for empty payload' do
  expect(@err[:data][:alter_ego]).to eql(["can't be blank"])
  expect(@err[:data][:real_name]).to eql(["can't be blank"])
  expect(@err[:data][:debut]).to eql(["can't be blank"])
  expect(@err[:data][:status]).to eql(["can't be blank"])
  expect(@err[:data][:bio]).to eql(["can't be blank"])
end

Given('user sends an invalid request to create character without {string}') do |invalid_attribute|
  begin
    case invalid_attribute
    when 'alter_ego' then create_character('', REAL_NAME, DEBUT, STATUS, BIO)
    when 'real_name' then create_character(ALTER_EGO, '', DEBUT, STATUS, BIO)
    when 'debut' then create_character(ALTER_EGO, REAL_NAME, '', STATUS, BIO)
    when 'status' then create_character(ALTER_EGO, REAL_NAME, DEBUT, '', BIO)
    when 'bio' then create_character(ALTER_EGO, REAL_NAME, DEBUT, STATUS, '')
    end
  rescue RuntimeError => e
    @err = JSON.parse(e.message.body, symbolize_names: true)
  end
end

Then 'user should expect can\'t be blank error for empty {string}' do |invalid_attribute|
  expect(@err[:data][invalid_attribute.to_sym]).to eql(["can't be blank"])
end