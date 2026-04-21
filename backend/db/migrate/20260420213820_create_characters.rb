class CreateCharacters < ActiveRecord::Migration[8.1]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.jsonb :search_names, default: [], null: false
      t.string :icon_url, null: false
      t.string :slug, null: false
      t.text :bio, null: false
      t.string :origin_country, null: false
      t.integer :first_appearance_year, null: false
      t.string :first_appearance_game, null: false
      t.integer :sort_order, null: false
      t.boolean :active, default: true, null: false


      t.timestamps
    end
    add_index :characters, :slug, unique: true
  end
end
