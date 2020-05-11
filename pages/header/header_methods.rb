class Header
  include PageActions
  include HeaderConstants

  def initialize(browser)
    @browser = browser
  end

  def clink_header_link(header_link_name)
    case header_link_name
    when 'Characters' then click_element(CHARACTERS_LINK)
    when 'Episodes' then click_element(EPISODES_LINK)
    when 'Movies' then click_element(MOVIES_LINK)
    when 'Actors' then click_element(ACTORS_LINK)
    when 'Create Character' then click_element(CREATE_CHARACTER_LINK)
    end
  end

  def search(query)
    is_displayed?(SEARCH_INPUT)

    @browser.find_element(SEARCH_INPUT).send_keys(query)
    click_element(SEARCH_BUTTON)
  end
end