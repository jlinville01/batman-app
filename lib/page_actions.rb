require 'browser'
require 'browser/aliases'

module PageActions
  def initialize(browser)
    @browser = browser
  end

  def wait_for(seconds)
    Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
  end

  def is_displayed?(locator = {}, timer = 15)
    wait_for(timer) do
      @browser.find_element(locator).displayed?
    end
  rescue Selenium::WebDriver::Error::TimeoutError
    false
  end

  def element_text(element)
    expect(is_displayed?(element)).to be(true), "Can't find element #{element}"

    @browser.find_element(element).text
  end

  def click_element(element)
    expect(is_displayed?(element)).to be(true), "Can't find element #{element}"

    @browser.find_element(element).click
  end
end