When 'user selects the {string} episode link' do |episode|
  @episodes_page.clink_episode_link(episode)
end

Then 'user should see {string} episode title' do |title|
  expect(@episodes_page.element_text(EpisodesPage::EPISODE_TITLE)).to eql(title)
end