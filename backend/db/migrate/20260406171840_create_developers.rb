class CreateDevelopers < ActiveRecord::Migration[8.1]
  def change
    create_table :developers do |t|
      t.string :name
      t.string :slug
      t.string :logo_url
      t.text :description
      t.date :founded

      t.timestamps
    end
  end
end
