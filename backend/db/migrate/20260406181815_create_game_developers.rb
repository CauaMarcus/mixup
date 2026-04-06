class CreateGameDevelopers < ActiveRecord::Migration[8.1]
  def change
    create_table :game_developers do |t|
      t.references :game, null: false, foreign_key: true
      t.references :developer, null: false, foreign_key: true
      t.integer :contribution_type

      t.timestamps
    end
  end
end
