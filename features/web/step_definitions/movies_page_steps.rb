When 'user selects the {string} movie link' do |movie|
  @movies_page.clink_movie_link(movie)
end

And 'user should see {string} movie title' do |title|
  expect(@movies_page.element_text(MoviesPage::MOVIE_TITLE)).to eql(title)
end