class Tag < ApplicationRecord
  has_many :prayers, dependent: :destroy
  has_many :topics, dependent: :destroy
  has_many :types, dependent: :destroy

  validates :label, presence: true
end
