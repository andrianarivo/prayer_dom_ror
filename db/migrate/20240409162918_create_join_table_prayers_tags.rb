class CreateJoinTablePrayersTags < ActiveRecord::Migration[7.1]
  def change
    create_join_table :prayers, :tags do |t|
      # t.index [:prayer_id, :tag_id]
      # t.index [:tag_id, :prayer_id]
    end
  end
end
