Given('user sends valid GET request for all actors') do
  @actors = actors
end

Then('all actors should return in the response') do
  expect(@actors.count).to eql(9)
end

Given('user sends valid GET request for actor ID {int}') do |actor_id|
  @actor = specific_actor(actor_id)
end

Then('actor {string} should return in the response') do |actor_name|
  expect(@actor[:name]).to eql(actor_name)
end