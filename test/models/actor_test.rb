require 'test_helper'

class ActorTest < ActiveSupport::TestCase
  test 'there are 9 actors' do
    counter = Actor.count
    assert_equal(9, counter, 'not 9 actors found')
  end

  test 'Kevin Conroy actor' do
    actor = Actor.find_by_name('Kevin Conroy')
    assert_equal('Batman', actor.character, 'Actor character is incorrect')
  end
end
