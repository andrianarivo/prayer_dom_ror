class CreateNotes < ActiveRecord::Migration[7.1]
  def change
    create_table :notes do |t|
      t.references :prayer, null: false, foreign_key: true
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
