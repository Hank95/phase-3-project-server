class ChangeColumnNameInGameTypes < ActiveRecord::Migration[6.1]
  def change
    rename_column :bar_game_types, :descripton, :description
  end
end
