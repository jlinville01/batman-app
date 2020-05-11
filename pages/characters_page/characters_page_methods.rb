class CharactersPage
  include PageActions
  include CharactersPageConstants

  def initialize(browser)
    @browser = browser
  end

  def clink_character_link(character)
    expect(is_displayed?({ link: character })).to be(true), "Can't find element { link: #{character} }"

    @browser.find_element(link: character).click
  end
end