Given('user sends valid GET request for all movies') do
  @movies = movies
end

Then('all movies should return in the response') do
  expect(@movies.count).to eql(3)
end

Given('user sends valid GET request for movie ID {int}') do |movie_id|
  @movie = specific_movie(movie_id)
end

Then('movie {string} should return in the response') do |movie_title|
  expect(@movie[:title]).to eql(movie_title)
end