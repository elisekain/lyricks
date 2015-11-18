class ChangeOptionsInCards < ActiveRecord::Migration
  def change
    change_column_null :cards, :title, false
    change_column_null :cards, :lyrics, false
    change_column :cards, :icon_selection, :string, default: "star"
    change_column :cards, :font_selection, :string, default: "normal"
    change_column :cards, :color_selection, :string, default: "red"
  end
end
