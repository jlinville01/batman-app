class CreateCharacterPage
  include PageActions
  include CreateCharacterPageConstants

  def initialize(browser)
    @browser = browser
  end
end