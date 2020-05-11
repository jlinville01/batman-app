def movies
  res = RestClient.get("#{BASE_HOST}/movies", nil)
  parsed_res = JSON.parse(res, symbolize_names: true)
  expect(res.code).to eql(200)
  expect(parsed_res[:status]).to eql('SUCCESS')
  expect(parsed_res[:message]).to eql('Loaded movies')
  parsed_res[:data]
rescue RuntimeError => e
  raise(e.response)
end

def specific_movie(movie_id)
  res = RestClient.get("#{BASE_HOST}/movies/#{movie_id}", nil)
  parsed_res = JSON.parse(res, symbolize_names: true)
  expect(res.code).to eql(200)
  expect(parsed_res[:status]).to eql('SUCCESS')
  expect(parsed_res[:message]).to eql('Loaded movie')
  expect(parsed_res[:data][:id]).to eql(movie_id)
  parsed_res[:data]
rescue RuntimeError => e
  raise(e.response)
end