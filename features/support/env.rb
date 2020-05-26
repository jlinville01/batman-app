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
  # Set driver path
  Selenium::WebDriver::Chrome::Service.driver_path = browser_config[:path]

  # Set Chrome browser options
  opts = Selenium::WebDriver::Chrome::Options.new
  opts.add_argument("--window-size=#{browser_config[:window_x]},#{browser_config[:window_y]}")

  # Instantiate webdriver
  @browser = Selenium::WebDriver.for(browser_config[:browser], options: opts)
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

After do |scenario|
  @browser.quit if scenario.source_tag_names.include? '@web'
end