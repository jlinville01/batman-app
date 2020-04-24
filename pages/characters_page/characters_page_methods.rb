class CharactersPage
  include PageActions
  include CharactersPageConstants

  def initialize(browser)
    @browser = browser
  end

  def character_not_found
    is_displayed?(CHARACTER_NOT_FOUND_MSG)

    @browser.find_element(CHARACTER_NOT_FOUND_MSG)
  end
end