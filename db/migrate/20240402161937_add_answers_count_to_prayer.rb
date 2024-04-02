class AddAnswersCountToPrayer < ActiveRecord::Migration[7.1]
  def change
    add_column :prayers, :answers_count, :integer, default: 0
  end
end
