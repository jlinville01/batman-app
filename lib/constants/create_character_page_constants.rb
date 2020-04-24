# frozen_string_literal: true

module CreateCharacterPageConstants
  CREATE_CHARACTER_PAGE_TITLE = { css: '[data-qa=create-character-page-header]' }.freeze
  ALIAS_INPUT = { id: 'character_alias'}.freeze
  REAL_NAME_INPUT = { id: 'character_real_name'}.freeze
  DEBUT_INPUT = { id: 'character_debut'}.freeze
  STATUS_DROPDOWN = { id: 'character_status'}.freeze
  BIO_INPUT = { id: 'character_bio'}.freeze
  CREATE_CHARACTER_SUBMIT_BUTTOM = { id: 'submit_character_button'}.freeze

  CREATE_CHARACTER_ERR_MSG = {css: '[data-qa=create-character-error-message]'}.freeze
end