class Footer
  include PageActions
  include FooterConstants

  def initialize(browser)
    @browser = browser
  end

  def clink_footer_link(footer_link_name)
    is_displayed?(GITHUB_LINK)

    case footer_link_name
    when 'Github' then click_element(GITHUB_LINK)
    when 'LinkedIn' then click_element(LINKEDIN_LINK)
    end
  end
end