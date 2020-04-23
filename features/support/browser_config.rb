# frozen_string_literal: true

module BrowserConfig
  CHROME_DESKTOP = {
    browser: :chrome,
    path: './drivers/chromedriver80',
    window_x: 1600,
    window_y: 1200,
    platform: 'desktop'
  }.freeze
end