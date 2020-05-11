class EpisodesPage
  include PageActions
  include EpisodesPageConstants

  def initialize(browser)
    @browser = browser
  end

  def clink_episode_link(episode)
    expect(is_displayed?({ link: episode })).to be(true), "Can't find element { link: #{episode} }"

    @browser.find_element(link: episode).click
  end
end