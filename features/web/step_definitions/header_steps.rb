Given 'user navigates to homepage' do

end

And 'user selects the {string} link from the header' do |header_link_name|
  @header.clink_header_link(header_link_name)
end

Then 'user should be redirected to {string} on the same tab' do |url|

end

And 'user should see the {string} page title displayed' do |title_name|

end