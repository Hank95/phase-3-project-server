class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.belongs_to :bar, foriegn_key: true
      t.belongs_to :bar_game_type, foriegn_key: true
      t.integer :amount
    end
  end
end
