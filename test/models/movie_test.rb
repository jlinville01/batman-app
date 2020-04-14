require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test "there are 3 movies" do
    counter = Movie.count
    assert_equal(3, counter, "not 3 movies found")
  end

  test "Batman: Mask of the Phantasm title" do
    movie = Movie.find_by_title("Batman: Mask of the Phantasm")
    assert_equal(Date.parse("Dec 25 1993"), movie.release_date, "Movie release_date is incorrect")
  end
end
