class ChangeFirstAppearanceYearInCharactersAndRemoveOriginCountry < ActiveRecord::Migration[8.1]
  def change
    remove_column :characters, :origin_country
    remove_column :characters, :first_appearance_year
    add_column :characters, :first_appearance_date, :date, null: false
  end
end
