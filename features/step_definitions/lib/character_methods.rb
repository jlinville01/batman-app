def characters
  res = RestClient.get("#{BASE_HOST}/characters", nil)
  parsed_res = JSON.parse(res, symbolize_names: true)
  expect(res.code).to eql(200)
  expect(parsed_res[:status]).to eql('SUCCESS')
  expect(parsed_res[:message]).to eql('Loaded characters')
  parsed_res[:data]
rescue RuntimeError => e
  raise(e.response)
end

def specific_character(character_id)
  res = RestClient.get("#{BASE_HOST}/characters/#{character_id}", nil)
  parsed_res = JSON.parse(res, symbolize_names: true)
  expect(res.code).to eql(200)
  expect(parsed_res[:status]).to eql('SUCCESS')
  expect(parsed_res[:message]).to eql('Loaded character')
  expect(parsed_res[:data][:id]).to eql(character_id)
  parsed_res[:data]
rescue RuntimeError => e
  raise(e.response)
end

def create_character(char_alias, real_name, debut, status, bio)
  payload = {
    alias: char_alias,
    real_name: real_name,
    debut: debut,
    status: status,
    bio: bio
  }
  res = RestClient.post("#{BASE_HOST}/characters", payload, nil)
  parsed_res = JSON.parse(res, symbolize_names: true)
  expect(res.code).to eql(200)
  expect(parsed_res[:status]).to eql('SUCCESS')
  expect(parsed_res[:message]).to eql('Saved character')
  expect(parsed_res[:data][:alias]).to eql(char_alias)
  parsed_res[:data]
rescue RuntimeError => e
  raise(e.response)
end
