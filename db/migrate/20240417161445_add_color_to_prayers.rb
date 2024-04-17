class AddColorToPrayers < ActiveRecord::Migration[7.1]
  def change
    add_column :prayers, :color, :string, default: '#3300ff'
  end
end
