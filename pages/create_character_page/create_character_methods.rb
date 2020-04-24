class CreateCharacterPage
  include PageActions
  include CreateCharacterPageConstants

  def initialize(browser)
    @browser = browser
  end

  def create_character_web(char_alias, real_name, debut, status, bio)
    is_displayed?(ALIAS_INPUT)

    @browser.find_element(ALIAS_INPUT).send_keys(char_alias)
    @browser.find_element(REAL_NAME_INPUT).send_keys(real_name)
    @browser.find_element(DEBUT_INPUT).send_keys(debut)
    @browser.find_element(STATUS_DROPDOWN).send_keys(status)
    @browser.find_element(BIO_INPUT).send_keys(bio)
    click_element(CREATE_CHARACTER_SUBMIT_BUTTOM)
  end

  def create_character_err_msg
    is_displayed?(CREATE_CHARACTER_ERR_MSG)
    error_messages = @browser.find_elements(CREATE_CHARACTER_ERR_MSG)

    arr = []
    error_messages.each do |msg|
      arr.push(msg.text)
    end

    arr
  end
end