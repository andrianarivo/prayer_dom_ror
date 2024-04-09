class RemoveTagIdFromPrayers < ActiveRecord::Migration[7.1]
  def change
    remove_column :prayers, :tag_id, :bigint
  end
end
