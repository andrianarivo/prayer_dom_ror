class AddColorToTag < ActiveRecord::Migration[7.1]
  def change
    add_column :tags, :bg_color, :string
    add_column :tags, :color, :string
  end
end
