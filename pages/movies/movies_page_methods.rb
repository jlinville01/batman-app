class MoviesPage
  include PageActions
  include MoviesPageConstants

  def initialize(browser)
    @browser = browser
  end
end