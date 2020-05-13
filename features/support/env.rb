require 'selenium-webdriver'
require 'rspec/matchers'
require 'json'
require 'faker'
require 'rest-client'
require 'require_all'
require_all 'lib'
require_all 'pages'

include RSpec::Matchers

# Sets up the Rails environment for Cucumber

SUPPORT_DIR = File.dirname(__FILE__)

def initialize_session(browser_config)
  @browser = Selenium::WebDriver.for(browser_config[:browser], driver_path: browser_config[:path])
  @browser.manage.window.resize_to(browser_config[:window_x], browser_config[:window_y])
end

Before do |scenario|
  if scenario.source_tag_names.include? '@web'
    # Hardcoded to Chrome only for demo purposes
    initialize_session(BrowserConfig::CHROME_DESKTOP)

    @global = Global.new(@browser)
    @header = Header.new(@browser)
    @home_page = HomePage.new(@browser)
    @characters_page = CharactersPage.new(@browser)
    @episodes_page = EpisodesPage.new(@browser)
    @movies_page = MoviesPage.new(@browser)
    @actors_page = ActorsPage.new(@browser)
    @create_character_page = CreateCharacterPage.new(@browser)
    @footer = Footer.new(@browser)

    @browser.navigate.to 'http://localhost:3000/'
  end
end