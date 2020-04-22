require 'json'
require 'rest-client'
require 'date'
require 'require_all'
require_all 'pages'

# Sets up the Rails environment for Cucumber

SUPPORT_DIR = File.dirname(__FILE__)

def initialize_wd_session(brs_hash = {})
  @browser = Selenium::WebDriver.for(brs_hash[:browser], driver_path: brs_hash[:path])
  @window_size = brs_hash[:platform].to_s
  @browser.manage.window.resize_to(brs_hash[:window_x], brs_hash[:window_y])
end