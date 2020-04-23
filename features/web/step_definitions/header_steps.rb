Given 'user navigates to homepage' do

end

And 'user selects the {string} link from the header' do |header_link_name|
  @header.clink_header_link(header_link_name)
  sleep 15
end