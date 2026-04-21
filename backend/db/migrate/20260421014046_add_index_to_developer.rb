class AddIndexToDeveloper < ActiveRecord::Migration[8.1]
  def change
    change_column :developers, :slug, :string, null: false
    add_index :developers, :slug, unique: true
  end
end
