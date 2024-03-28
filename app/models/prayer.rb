class Prayer < ApplicationRecord
  belongs_to :status
  belongs_to :type
  belongs_to :user
  belongs_to :tag, required: false

  validates :description, :status, :type, :user, :location, presence: true
  validates :datetime_to_pray, presence: true, timeliness: { type: :date }
end
