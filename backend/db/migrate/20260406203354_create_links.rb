class CreateLinks < ActiveRecord::Migration[8.1]
  def change
    create_table :links do |t|
      t.string :name, null: false
      t.string :url, null: false
      t.string :logo_url, null:true
      t.references :linkable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
