When 'user selects the {string} link from the footer' do |footer_link|
  @footer.clink_footer_link(footer_link)
end

Then 'user should be redirected from to {string}' do |url|
  expect(@browser.current_url).to eql(url)
end