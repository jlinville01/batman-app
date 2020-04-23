Then 'user should be redirected to {string}' do |url|
  expect(@browser.current_url).to eql('http://localhost:3000' + url)
end

And 'user should see the {string} page title displayed' do |title_name|
  @global.title_displayed(title_name)
end