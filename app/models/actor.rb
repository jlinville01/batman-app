class Actor < ApplicationRecord
  validates :name, presence: true
  validates :character, presence: true
end