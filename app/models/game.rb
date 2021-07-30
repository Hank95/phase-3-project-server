class Game < ActiveRecord::Base 
    belongs_to :bar
    belongs_to :bar_game_type

end