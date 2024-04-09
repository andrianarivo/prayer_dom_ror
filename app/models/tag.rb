class Tag < ApplicationRecord
  has_many :topics, dependent: :destroy
  has_many :types, dependent: :destroy

  has_and_belongs_to_many :prayers

  validates :label, presence: true
end
