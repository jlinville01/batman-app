class EpisodesPage
  include PageActions
  include EpisodesPageConstants

  def initialize(browser)
    @browser = browser
  end
end