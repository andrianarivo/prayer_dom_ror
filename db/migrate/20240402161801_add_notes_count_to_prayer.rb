class AddNotesCountToPrayer < ActiveRecord::Migration[7.1]
  def change
    add_column :prayers, :notes_count, :integer, default: 0
  end
end
