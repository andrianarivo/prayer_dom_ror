class Role < ApplicationRecord
  validates :title, presence: true
end
