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
      expect(element_text(HOME_PAGE_TITLE)).to eql(title_name.upcase)
    when 'Characters'
      expect(element_text(CHARACTERS_PAGE_TITLE)).to eql(title_name.upcase)
    when 'Episodes'
      expect(element_text(EPISODES_PAGE_TITLE)).to eql(title_name.upcase)
    when 'Movies'
      expect(element_text(MOVIES_PAGE_TITLE)).to eql(title_name.upcase)
    when 'Actors'
      expect(element_text(ACTORS_PAGE_TITLE)).to eql(title_name.upcase)
    when 'Create New Character'
      expect(element_text(CREATE_CHARACTER_PAGE_TITLE)).to eql(title_name.upcase)
    else
      raise 'Invalid page title'
    end
  end
end