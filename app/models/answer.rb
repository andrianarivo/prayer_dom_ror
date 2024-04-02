class Answer < ApplicationRecord
  belongs_to :prayer

  validates :prayer, :content, presence: true

  after_save :update_prayer_answers_count
  after_destroy :update_prayer_answers_count

  def update_prayer_answers_count
    prayer.update(answers_count: prayer.answers.count)
  end
end
