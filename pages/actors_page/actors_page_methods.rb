class ActorsPage
  include PageActions
  include ActorsPageConstants

  def initialize(browser)
    @browser = browser
  end
end