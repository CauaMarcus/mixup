class ChangeColorsInGames < ActiveRecord::Migration[8.1]
  def change
    add_column :games, :primary_color, :string, null: false
    add_column :games, :secondary_color, :string, null: false
    add_column :games, :tertiary_color, :string, null: false
    remove_column :games, :theme_color
  end
end
