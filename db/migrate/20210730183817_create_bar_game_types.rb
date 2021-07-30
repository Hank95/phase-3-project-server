class CreateBarGameTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :bar_game_types do |t|
      t.string :game_type
      t.string :descripton
    end
  end
end
