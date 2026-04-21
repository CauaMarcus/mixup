class CreateCharacterInfos < ActiveRecord::Migration[8.1]
  def change
    create_table :character_infos do |t|
      t.integer :height, null:false
      t.integer :weight, null:false
      t.string :slug, null:false
      t.string :icon_url, null:false
      t.text :bio, null:false
      t.text :visual_description, null:false
      t.references :character, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
    add_index :character_infos, :slug, unique: true
  end
end
