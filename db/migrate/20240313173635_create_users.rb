class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
