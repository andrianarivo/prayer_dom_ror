class Prayer < ApplicationRecord
  belongs_to :status
  belongs_to :type
  belongs_to :user
  belongs_to :tag, required: false

  has_many :notes, dependent: :destroy

  validates :description, :status, :type, :user, :location, :summary, presence: true
  validates :datetime_to_pray, presence: true, timeliness: { type: :date }
  validates_length_of :words_in_summary, within: 2..8

  private

  def words_in_summary
    return '' if summary.blank?

    summary.scan(/\w+/)
  end
end
