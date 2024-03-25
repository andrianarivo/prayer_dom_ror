class Topic < ApplicationRecord
  belongs_to :tag

  validates :title, :description, :tag, presence: true
end
