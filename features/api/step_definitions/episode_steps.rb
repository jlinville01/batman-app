Given('user sends valid GET request for all episodes') do
  @episodes = episodes
end

Then('all episodes should return in the response') do
  expect(@episodes.count).to eql(85)
end

Given('user sends valid GET request for episode ID {int}') do |episode_id|
  @episode = specific_episode(episode_id)
end

Then('episode {string} should return in the response') do |episode_title|
  expect(@episode[:title]).to eql(episode_title)
end