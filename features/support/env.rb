require 'selenium-webdriver'
# require 'rspec'
require 'json'
require 'rest-client'
require 'date'
Dir['./batman-app/lib/constants/*'].each { |file| require file }
require 'require_all'
# require_all 'pages'
require_all 'lib'
require_all 'pages'
# require_all 'lib/constants'

# Sets up the Rails environment for Cucumber

SUPPORT_DIR = File.dirname(__FILE__)

# Dir['./batman-app/lib/constants/*'].each { |file| require file }

def initialize_session(browser_config)
  @browser = Selenium::WebDriver.for(browser_config[:browser], driver_path: browser_config[:path])
  @window_size = browser_config[:platform].to_s
  @browser.manage.window.resize_to(browser_config[:window_x], browser_config[:window_y])
end

Before do |scenario|
  if scenario.source_tag_names.include? '@web'
    initialize_session(BrowserConfig::CHROME_DESKTOP)

    @header = Header.new(@browser)

    @browser.navigate.to 'http://localhost:3000/'
  end
end