class Note < ApplicationRecord
  belongs_to :prayer

  validates :content, :prayer, :title, presence: true

  after_save :update_prayer_notes_count
  after_destroy :update_prayer_notes_count

  def update_prayer_notes_count
    prayer.update(notes_count: prayer.notes.count)
  end
end
