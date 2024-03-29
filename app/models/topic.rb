class Topic < ApplicationRecord
  belongs_to :tag

  has_many :types, dependent: :destroy

  validates :title, :description, :tag, presence: true
end
