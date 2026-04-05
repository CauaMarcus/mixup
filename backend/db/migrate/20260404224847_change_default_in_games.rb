class ChangeDefaultInGames < ActiveRecord::Migration[8.1]
  def change
    change_column :games, :primary_color, :string, null: false, default: "#1A1A1B"
    change_column :games, :secondary_color, :string, null: false, default: "#2D2D2E"
    change_column :games, :tertiary_color, :string, null: false, default: "#FF4500"
    change_column :games, :notation_type, :integer, null: false, default: 0
  end
end
