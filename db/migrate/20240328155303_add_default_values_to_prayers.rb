class AddDefaultValuesToPrayers < ActiveRecord::Migration[7.1]
  def change
    change_column_default :prayers, :datetime_to_pray, -> { 'CURRENT_DATE' }
    change_column_default :prayers, :location, 'home'
  end
end
