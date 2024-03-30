class Answer < ApplicationRecord
  belongs_to :prayer

  validates :prayer, :content, presence: true
end
