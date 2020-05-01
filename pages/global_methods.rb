class Global
  include PageActions
  include HomePageConstants
  include CharactersPageConstants
  include EpisodesPageConstants
  include MoviesPageConstants
  include ActorsPageConstants
  include CreateCharacterPageConstants

  def title_displayed(title_name)
    case title_name
    when 'Welcome'
      is_displayed?(HOME_PAGE_TITLE)
      expect(@browser.find_element(HOME_PAGE_TITLE).text).to eql(title_name.upcase)
    when 'Characters'
      is_displayed?(CHARACTERS_PAGE_TITLE)
      expect(@browser.find_element(CHARACTERS_PAGE_TITLE).text).to eql(title_name.upcase)
    when 'Episodes'
      is_displayed?(EPISODES_PAGE_TITLE)
      expect(@browser.find_element(EPISODES_PAGE_TITLE).text).to eql(title_name.upcase)
    when 'Movies'
      is_displayed?(MOVIES_PAGE_TITLE)
      expect(@browser.find_element(MOVIES_PAGE_TITLE).text).to eql(title_name.upcase)
    when 'Actors'
      is_displayed?(ACTORS_PAGE_TITLE)
      expect(@browser.find_element(ACTORS_PAGE_TITLE).text).to eql(title_name.upcase)
    when 'Create New Character'
      is_displayed?(CREATE_CHARACTER_PAGE_TITLE)
      expect(@browser.find_element(CREATE_CHARACTER_PAGE_TITLE).text).to eql(title_name.upcase)
    else
      raise 'Non-existent title provided'
    end
  end
end