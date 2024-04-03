class AddPriorityToPrayer < ActiveRecord::Migration[7.1]
  def change
    add_column :prayers, :priority, :string, default: PriorityLevels::LOW
  end
end
