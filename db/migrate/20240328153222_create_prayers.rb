class CreatePrayers < ActiveRecord::Migration[7.1]
  def change
    create_table :prayers do |t|
      t.string :description
      t.references :status, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.date :datetime_to_pray
      t.string :location

      t.timestamps
    end
  end
end
