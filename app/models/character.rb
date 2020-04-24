class Character < ApplicationRecord
  validates :alter_ego, presence: true, uniqueness: true, allow_blank: false
  validates :real_name, presence: true, allow_blank: false
  validates :debut, presence: true, allow_blank: false
  validates :status, presence: true, allow_blank: false
  validates :bio, presence: true, allow_blank: false
  validates :alter_ego, length: { maximum: 20 }
  validates :real_name, length: { maximum: 20 }
  validates :debut, length: { maximum: 40 }
  validates :status, length: { maximum: 20 }
  validates :bio, length: { maximum: 350 }
end