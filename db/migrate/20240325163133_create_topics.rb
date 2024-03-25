class CreateTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :topics do |t|
      t.string :title
      t.string :description
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
