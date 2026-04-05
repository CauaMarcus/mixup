class CreateGames < ActiveRecord::Migration[8.1]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.string :developer, null: false
      t.string :icon_url, null: false
      t.string :banner_url, null: false
      t.integer :notation_type, null: false
      t.string :theme_color, null: false
      t.boolean :active, null: false
      t.integer :sort_order, null: false
      t.text :description, null: false

      t.timestamps
    end
    add_index :games, :slug
  end
end
