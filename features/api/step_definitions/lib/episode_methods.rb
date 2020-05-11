def episodes
  res = RestClient.get("#{BASE_HOST}/episodes_page", nil)
  parsed_res = JSON.parse(res, symbolize_names: true)
  expect(res.code).to eql(200)
  expect(parsed_res[:status]).to eql('SUCCESS')
  expect(parsed_res[:message]).to eql('Loaded episodes_page')
  parsed_res[:data]
rescue RuntimeError => e
  raise(e.response)
end

def specific_episode(episode_id)
  res = RestClient.get("#{BASE_HOST}/episodes_page/#{episode_id}", nil)
  parsed_res = JSON.parse(res, symbolize_names: true)
  expect(res.code).to eql(200)
  expect(parsed_res[:status]).to eql('SUCCESS')
  expect(parsed_res[:message]).to eql('Loaded episode')
  expect(parsed_res[:data][:id]).to eql(episode_id)
  parsed_res[:data]
rescue RuntimeError => e
  raise(e.response)
end