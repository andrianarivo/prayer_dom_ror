class Prayer < ApplicationRecord
  belongs_to :status
  belongs_to :type
  belongs_to :user

  has_many :notes, dependent: :destroy
  has_many :answers, dependent: :destroy

  has_and_belongs_to_many :tags

  attribute :datetime_to_pray, default: -> { Time.current }

  validates :description, :status, :type, :user, :location, :summary, presence: true
  validates :datetime_to_pray, presence: true, timeliness: { type: :date }
  validates_length_of :words_in_summary, within: 2..8
  validates :notes_count, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :answers_count, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :priority, inclusion: { in: PriorityLevels::LEVELS }

  private

  def words_in_summary
    return '' if summary.blank?

    summary.scan(/\w+/)
  end
end
