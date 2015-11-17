class CreateCardTags < ActiveRecord::Migration
  def change
    create_table :card_tags do |t|
    t.references :card, index: true, foreign_key: true
    t.references :tag, index: true, foreign_key: true
    end
  end
end
