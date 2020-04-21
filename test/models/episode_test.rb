require 'test_helper'

class EpisodeTest < ActiveSupport::TestCase
  test 'there are 4 episodes' do
    counter = Episode.count
    assert_equal(4, counter, 'not 4 episodes found')
  end

  test 'On Leather Wings title' do
    episode = Episode.find_by_title('On Leather Wings')
    assert_equal(1, episode.number, 'Episode number is incorrect')
    assert_equal(1, episode.season, 'Episode season is incorrect')
  end
end
