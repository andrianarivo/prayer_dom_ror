class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.references :prayer, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
