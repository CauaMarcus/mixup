class ChangeIndexOnGamesSlug < ActiveRecord::Migration[8.1]
  def change
    remove_index :games, :slug
    add_index :games, :slug, unique: true
  end
end
