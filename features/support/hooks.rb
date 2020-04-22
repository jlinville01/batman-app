Before do |scenario|
  begin
    initialize_wd_session(BrowserConfig::CHROME_DESKTOP)

    @header = Header.new(@browser)
  end
end