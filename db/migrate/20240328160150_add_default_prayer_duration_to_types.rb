class AddDefaultPrayerDurationToTypes < ActiveRecord::Migration[7.1]
  def change
    change_column_default :types, :prayer_duration, 1
  end
end
