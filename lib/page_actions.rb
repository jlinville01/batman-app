# Dir['./batman-app/lib/constants/*'].each { |file| require file }
require 'browser'
require 'browser/aliases'
require 'require_all'
require_all 'lib'

module PageActions
  def initialize(browser)
    @browser = browser
  end

  def is_displayed?(locator = {}, timer = 35)
    element_found = false

    wait_for(timer) do
      @browser.find_element(locator).displayed?
      element_found = true
    end

    element_found
  rescue Selenium::WebDriver::Error::TimeOutError
    return false
    raise "ElementNotDisplayedError: Could not find #{locator}"
  end
end