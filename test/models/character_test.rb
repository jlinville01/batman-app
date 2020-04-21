require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  test 'there are 5 heroes' do
    counter = Character.count
    assert_equal(5, counter, 'not 5 heroes found')
  end

  test 'Batman' do
    character = Character.find_by_alias('Batman')
    assert_equal('Bruce Wayne', character.real_name, 'Character real_name is incorrect')
    assert_equal('On Leather Wings', character.debut, 'company name is incorrect')
  end
end
