def actors
  res = RestClient.get("#{BASE_HOST}/actors", nil)
  parsed_res = JSON.parse(res, symbolize_names: true)
  expect(res.code).to eql(200)
  expect(parsed_res[:status]).to eql('SUCCESS')
  expect(parsed_res[:message]).to eql('Loaded actors')
  parsed_res[:data]
rescue RuntimeError => e
  raise(e.response)
end

def specific_actor(actor_id)
  res = RestClient.get("#{BASE_HOST}/actors/#{actor_id}", nil)
  parsed_res = JSON.parse(res, symbolize_names: true)
  expect(res.code).to eql(200)
  expect(parsed_res[:status]).to eql('SUCCESS')
  expect(parsed_res[:message]).to eql('Loaded actor')
  expect(parsed_res[:data][:id]).to eql(actor_id)
  parsed_res[:data]
rescue RuntimeError => e
  raise(e.response)
end