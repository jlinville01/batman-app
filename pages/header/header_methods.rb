class Header
  include PageActions
  include HeaderConstants

  def initialize(browser)
    @browser = browser
  end

  def clink_header_link(header_link_name)
    is_displayed?(CHARACTERS_LINK)

    case header_link_name
    when 'Characters' then click_element(CHARACTERS_LINK)
    when 'Episodes' then click_element(EPISODES_LINK)
    when 'Movies' then click_element(MOVIES_LINK)
    when 'Actors' then click_element(ACTORS_LINK)
    when 'Create Character' then click_element(CREATE_CHARACTER_LINK)
    end
  end

end