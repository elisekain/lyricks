class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.string :lyrics
      t.string :icon_selection
      t.string :font_selection
      t.string :color_selection
      t.references :user, index: true, foreign_key: true
    end
  end
end
