class HomePage
  include PageActions
  include HomePageConstants

  def initialize(browser)
    @browser = browser
  end
end