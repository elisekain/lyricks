class AddPrivateToCards < ActiveRecord::Migration
  def change
    add_column :cards, :private, :boolean, :default => false
  end
end
