class Note < ApplicationRecord
  belongs_to :prayer

  validates :content, :prayer, :title, presence: true
end
