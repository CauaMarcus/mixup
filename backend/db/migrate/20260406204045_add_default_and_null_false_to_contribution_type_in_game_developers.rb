class AddDefaultAndNullFalseToContributionTypeInGameDevelopers < ActiveRecord::Migration[8.1]
  def change
    change_column :game_developers, :contribution_type, :integer, null: false, default: 0
  end
end
