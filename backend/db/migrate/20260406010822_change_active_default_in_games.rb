class ChangeActiveDefaultInGames < ActiveRecord::Migration[8.1]
  def change
    change_column :games, :active, :boolean, null: false, default: true
  end
end
