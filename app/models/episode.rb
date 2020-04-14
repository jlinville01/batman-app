class Episode < ApplicationRecord
  validates :number, presence: true
  validates :season, presence: true
  validates :title, presence: true
  validates :synopsis, presence: true
end