And 'user selects the {string} link from the header' do |header_link_name|
  @header.clink_header_link(header_link_name)
end

When 'user searches for {string}' do |query|
  @header.search(query)
end