class Type < ApplicationRecord
  belongs_to :topic
  belongs_to :tag, required: false

  validates :label, :subject, :description, :topic, presence: true
  validates :prayer_duration, numericality: { only_integer: true, greater_than: 0 }
end
