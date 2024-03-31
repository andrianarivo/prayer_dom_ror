class AddSummaryToPrayers < ActiveRecord::Migration[7.1]
  def change
    add_column :prayers, :summary, :string
  end
end
