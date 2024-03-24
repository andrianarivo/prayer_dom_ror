class Tag < ApplicationRecord
  validates :label, presence: true
end
