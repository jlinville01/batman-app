class CharactersPage
  include PageActions
  include CharactersPageConstants

  def initialize(browser)
    @browser = browser
  end
end