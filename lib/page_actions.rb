require 'browser'
require 'browser/aliases'
# Dir['./batman-app/lib/constants/*'].each { |file| require file }

module PageActions
  def initialize(browser)
    @browser = browser
  end

  def wait_for(seconds)
    Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
  end

  def click_element(locator, timer = 15)
    wait_for(timer) { is_displayed?(locator, timer) }
    @browser.find_element(locator).click
  rescue Selenium::WebDriver::Error::JavascriptError
    @browser.find_element(@locator).click
  rescue Selenium::WebDriver::Error::InvalidElementStateError
    @browser.find_element(@locator).click
  end

  def is_displayed?(locator = {}, timer = 15)
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