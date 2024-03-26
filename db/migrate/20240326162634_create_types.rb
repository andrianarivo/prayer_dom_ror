class CreateTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :types do |t|
      t.string :label
      t.string :subject
      t.string :description
      t.references :topic, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.integer :prayer_duration

      t.timestamps
    end
  end
end
