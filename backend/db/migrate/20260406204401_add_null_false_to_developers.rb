class AddNullFalseToDevelopers < ActiveRecord::Migration[8.1]
  def change
    change_column_null :developers, :name, false
    change_column_null :developers, :slug, false
    change_column_null :developers, :logo_url, false
    change_column_null :developers, :description, false
    change_column_null :developers, :founded, false
  end
end
