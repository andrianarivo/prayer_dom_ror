class ModifyTags < ActiveRecord::Migration[7.1]
  def change
    change_column_null :tags, :label, false
    change_column_default :tags, :bg_color, '#808080'
    change_column_default :tags, :color, '#000000'
  end
end
