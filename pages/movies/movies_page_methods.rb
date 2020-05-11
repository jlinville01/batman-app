class MoviesPage
  include PageActions
  include MoviesPageConstants

  def initialize(browser)
    @browser = browser
  end

  def clink_movie_link(movie)
    expect(is_displayed?({ link: movie })).to be(true), "Can't find element { link: #{movie} }"

    @browser.find_element(link: movie).click
  end
end