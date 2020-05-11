class CreateCharacterPage
  include PageActions
  include CreateCharacterPageConstants

  def initialize(browser)
    @browser = browser
  end

  def create_character_web(alter_ego, real_name, debut, status, bio)
    expect(is_displayed?(ALTER_EGO_INPUT)).to be(true), "Can't find element #{ALTER_EGO_INPUT}"

    @browser.find_element(ALTER_EGO_INPUT).send_keys(alter_ego)
    @browser.find_element(REAL_NAME_INPUT).send_keys(real_name)
    @browser.find_element(DEBUT_INPUT).send_keys(debut)
    @browser.find_element(STATUS_DROPDOWN).send_keys(status)
    @browser.find_element(BIO_INPUT).send_keys(bio)
    click_element(CREATE_CHARACTER_SUBMIT_BUTTOM)
  end

  def create_character_err_msg
    expect(is_displayed?(CREATE_CHARACTER_ERR_MSG)).to be(true), "Can't find element #{CREATE_CHARACTER_ERR_MSG}"
    error_messages = @browser.find_elements(CREATE_CHARACTER_ERR_MSG)

    arr = []
    error_messages.each do |msg|
      arr.push(msg.text)
    end

    arr
  end
end